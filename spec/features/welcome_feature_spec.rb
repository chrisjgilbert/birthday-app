feature 'the home page' do
  scenario 'welcomes the user' do
    visit '/'
    expect(page).to have_content 'welcome'
  end
end
