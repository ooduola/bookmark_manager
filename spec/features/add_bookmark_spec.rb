
# how the user interacts with adding a new bookmark.

# - Visit a page, /bookmark/new
# - Typing a URL into a form on that page
# - Submitting the form 
# - Seeing the bookmark they just submitted

feature 'Adding a new bookmark to the database' do
  scenario 'typing the website into the form' do
    visit '/bookmarks/new'
  
    fill_in('url', with: 'www.techpoint.africa')
    fill_in('title', with: 'test')
    click_button('Save')

    expect(page).to have_content 'www.techpoint.africa'
    expect(page).to have_content 'test'
  end

end