feature 'the home page' do
  scenario 'welcomes the user' do
    visit '/'
    expect(page).to have_content 'Welcome!'
  end

  scenario 'asks the user for their name' do
    visit '/'
    expect(page).to have_content 'What is your name?'
  end

  scenario 'asks the user for their name' do
    visit '/'
    fill_in :name, with: 'Chris'
    click_button 'submit'
    expect(page).to have_content 'Hello Chris'
  end
end
