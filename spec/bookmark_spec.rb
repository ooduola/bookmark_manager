require './lib/bookmark'

describe Bookmark do
  context '.all' do
    it 'allows a user to view their bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include ('http://www.makersacademy.com')
      expect(bookmarks).to include ('http://www.destroyallsoftware.com')
      expect(bookmarks).to include ('http://www.google.com')
    end
  end
end
