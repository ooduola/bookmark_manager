require 'pg'

class Bookmark

  def self.all
    if ENV['RACK_ENV'] == "test"
      con = PG.connect( dbname: 'bookmark_manager_test' )
    else
      con = PG.connect( dbname: 'bookmark_manager' )
    end

    list = []
    result = con.exec( "SELECT url FROM bookmarks" ) do |results|
      results.each do |row|
        list << row["url"]
      end
    end

    con.close if con

    list
  end

  def self.create(url_input)

    if ENV['RACK_ENV'] == "test"
      con = PG.connect( dbname: 'bookmark_manager_test' )
    else
      con = PG.connect( dbname: 'bookmark_manager' )
    end  
    @url = url_input[:url]
    con.exec("INSERT INTO bookmarks(url) VALUES('#{@url}')")
  end
end
