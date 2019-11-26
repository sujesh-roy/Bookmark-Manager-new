require 'pg'

class Bookmarks


  def all
    begin

    con = PG.connect :dbname => 'bookmarks', :user => 'Bookmark_manager_database'

    rs = con.exec "SELECT * FROM bookmarks"

    rs.each do |row|
      puts "%s %s" % [ row['id'], row['url'] ]
    end

rescue PG::Error => e

    puts e.message

ensure

    rs.clear if rs
    con.close if con

end
    # ["https://sqlzoo.net/wiki/SELECT_basics", "https://www.google.com/", "https://www.facebook.com", "https://www.asos.com"]
  end

end
