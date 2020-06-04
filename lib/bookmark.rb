require 'pg'

class Bookmark

  def self.all
    if ENV['RACK_ENV'] == "test"
      con = PG.connect( dbname: 'bookmark_manager_test' )
    else
      con = PG.connect( dbname: 'bookmark_manager' )
    end

    # list = []
    result = con.exec( "SELECT url, title FROM bookmarks" ) 
    
    result.map do |row| 
      p [row["url"], row["title"]] 
    end
  end

    # con.close if con

  def self.create(url, title)

    if ENV['RACK_ENV'] == "test"
      con = PG.connect( dbname: 'bookmark_manager_test' )
    else
      con = PG.connect( dbname: 'bookmark_manager' )
    end  
    con.exec("INSERT INTO bookmarks(url, title) VALUES('#{url}','#{title}')")
  end
end
