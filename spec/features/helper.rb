require 'pg'

def truncate
  con = PG.connect( dbname: 'bookmark_manager_test' )

  con.exec(TRUNCATE bookmarks )

  con.close if con
end
