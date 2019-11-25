require 'bookmarks'

describe Bookmarks do
  it 'has a hardcoded list of bookmarks' do
    bookmarks = Bookmarks.new
    expect(bookmarks.all).to include("https://sqlzoo.net/wiki/SELECT_basics")
  end
end
