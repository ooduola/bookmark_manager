require './spec/helper.rb'

feature 'Deleting bookmarks' do
  scenario 'Homepage should have button to move to /delete' do
    visit('/bookmarks')
    expect(page).to have_button('Delete bookmark')
  end

  scenario 'User can delete bookmark via title' do
    fill_up_data
    visit('/bookmarks')
    fill_in ("delete"), with: "Makers"
    click_button('Delete bookmark')
    expect(page).not_to have_content("Makers")
  end
end