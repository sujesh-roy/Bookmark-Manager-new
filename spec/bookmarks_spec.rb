require 'bookmarks'
require 'pg'
require './app'

describe Bookmarks do
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

    bookmarks = Bookmarks.all

    expect(bookmarks).to include "http://www.makersacademy.com"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.google.com"
  end

  describe '.create' do
      it 'creates a new bookmark' do
        Bookmarks.create(url: 'http://www.testbookmark.com')
        bookmarks = Bookmarks.all

        expect(bookmarks).to include 'http://www.testbookmark.com'
      end
    end
end
end
