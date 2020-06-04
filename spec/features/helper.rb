require 'pg'

def truncate
  con = PG.connect( dbname: 'bookmark_manager_test' )
  
  con.exec( "TRUNCATE bookmarks" )

  con.close if con
end

def fill_up_data

  con = PG.connect( dbname: 'bookmark_manager_test' )
  
  con.exec("INSERT INTO bookmarks(url,title) VALUES('http://www.makersacademy.com', 'Makers'), 
  ('http://www.destroyallsoftware.com', 'DAS'),('http://www.google.com', 'Google')" )

  con.close if con

end
