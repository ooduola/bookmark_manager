require 'pg'

class Bookmark

  def self.all
    if ENV['rspec'] == "yes"
      con = PG.connect( dbname: 'bookmark_manager_test' )
    else
      con = PG.connect( dbname: 'bookmark_manager' )
    end

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
