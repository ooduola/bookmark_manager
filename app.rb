require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/bookmarks/new' do
    erb :new
  end

  # post '/bookmarks' do
  #   p params
  #   p "Form has been submitted to the /bookmarks "
  # end

  # post '/bookmarks' do
  #   url = params['url']
  #   connection = PG.connect( dbname: 'bookmark_manager_test' )
  #   connection.exec("INSERT INTO bookmarks(url) VALUES('#{url}')")
  #   redirect '/bookmarks'
  # end

  post '/bookmarks' do
    Bookmark.create(url: params['url'])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
