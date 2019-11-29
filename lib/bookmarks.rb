require 'pg'

class Bookmarks


  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
  end

    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url']}
  end
    # ["https://sqlzoo.net/wiki/SELECT_basics", "https://www.google.com/", "https://www.facebook.com", "https://www.asos.com"]

    def self.create(url:)
      if ENV['ENVIRONMENT'] == 'test'
        connection = PG.connect(dbname: 'bookmark_manager_test')
      else
        connection = PG.connect(dbname: 'bookmark_manager')
      end

        connection.exec("INSERT INTO bookmarks(url) VALUES('#{url}')")

    end

end
