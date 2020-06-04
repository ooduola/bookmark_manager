require './spec/helper.rb'

feature 'viewing bookmarks' do
  scenario 'visiting the index page' do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end

    scenario 'A user can view their bookmarks' do
      fill_up_data
      visit '/bookmarks'
      expect(page).to have_content 'Makers'
      expect(page).to have_content 'DAS'
      expect(page).to have_content 'Google'

      
    end
  end
