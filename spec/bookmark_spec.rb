require './lib/bookmark'
require_relative './helper.rb'

describe Bookmark do

  context '.all' do
    it 'allows a user to view their bookmarks' do
      fill_up_data
      bookmarks = Bookmark.all
      
      expect(bookmarks.length).to eq(3)
      expect(bookmarks.first).to be_instance_of(Bookmark)
    end
  end

  context '.create' do
    it 'stores new websites into Bookmark Manager' do
      Bookmark.create("www.techpoint.africa", "title")
      bookmark = Bookmark.all.first
      
      expect(bookmark.url).to eq 'www.techpoint.africa'
      expect(bookmark.title).to eq 'title'
    end
  end
end
