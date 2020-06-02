require './lib/bookmark'

describe Bookmark do
  context '.all' do
    it 'allows a user to view their bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include ('www.bbc.co.uk')
      expect(bookmarks).to include ('www.skysports.co.uk')
      expect(bookmarks).to include ('https://makers.tech/')
    end
  end
end
