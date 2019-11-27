require 'bookmarks'

# describe Bookmarks do
#   it 'has a hardcoded list of bookmarks' do
#     bookmarks = Bookmarks.new
#     expect(bookmarks.all).to include("http://www.makersacademy.com")
#   end
# end

describe 'all' do
  it 'returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

    bookmarks = Bookmarks.new

    expect(bookmarks.all).to include "http://www.makersacademy.com"
    expect(bookmarks.all).to include "http://www.destroyallsoftware.com"
    expect(bookmarks.all).to include "http://www.google.com"
  end
end
