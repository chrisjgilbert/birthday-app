feature 'the home page' do
  scenario 'welcomes the user' do
    visit '/'
    expect(page).to have_content 'Welcome!'
  end

  scenario 'asks the user for their name' do
    visit '/'
    expect(page).to have_content 'What is your name?'
  end

  scenario 'asks the user for their birthday' do
    visit '/'
    expect(page).to have_content 'When is your birthday?'
  end

  xscenario 'asks the user for their name and DOB' do
    visit '/'
    fill_in :name, with: 'Chris'
    fill_in :day, with: '15'
    select :november, from: 'month'
    click_button 'Go!'
    expect(page).to have_content 'Happy Birthday Chris!'
  end

end
