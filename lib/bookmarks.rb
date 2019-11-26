require 'pg'

class Bookmarks


  def all
    connection = PG.connect(dbname: 'Bookmark_manager_database')
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url']}
  end
    # ["https://sqlzoo.net/wiki/SELECT_basics", "https://www.google.com/", "https://www.facebook.com", "https://www.asos.com"]
end
