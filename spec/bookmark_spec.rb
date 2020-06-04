require './lib/bookmark'
require_relative './features/helper'

describe Bookmark do

  context '.all' do
    it 'allows a user to view their bookmarks' do
      truncate
      fill_up_data
      bookmarks = Bookmark.all
      
      expect(bookmarks).to include ('http://www.makersacademy.com')
      expect(bookmarks).to include ('http://www.destroyallsoftware.com')
      expect(bookmarks).to include ('http://www.google.com')
    end
  end

  context '.create' do
    it 'stores new websites into Bookmark Manager' do
      Bookmark.create("www.techpoint.africa", "title")
      expect(Bookmark.all).to include("www.techpoint.africa")
    end
  end
end
