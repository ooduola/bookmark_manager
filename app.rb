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

  post '/bookmarks' do
    
    Bookmark.create(params[:url], params[:title])

    redirect '/bookmarks'
  end

  post '/delete' do
    Bookmark.delete(params[:delete]) 
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
