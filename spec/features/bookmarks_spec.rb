feature 'bookmarks' do
  scenario 'shows a list of bookmarks' do
    expect(page).to have_content 'https://sqlzoo.net/wiki/SELECT_basics'
  end
end
