require 'pg'

def truncate
  con = PG.connect( dbname: 'bookmark_manager_test' )
  
  con.exec( "TRUNCATE bookmarks" )

  con.close if con
end

def fill_up_data

  con = PG.connect( dbname: 'bookmark_manager_test' )
  
  con.exec("INSERT INTO bookmarks(url) VALUES('http://www.makersacademy.com'), 
  ('http://www.destroyallsoftware.com'),('http://www.google.com')" )

  con.close if con

end
