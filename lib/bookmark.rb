require 'pg'

class Bookmark

  def self.all
    con = PG.connect( dbname: 'bookmark_manager' )
    list = []
    con.exec( "SELECT url FROM bookmarks" ) do |results|
      results.each do |row|
        list << row["url"]
      end
    end

    con.close if con

    list
  end
end
