feature 'displays a celebration message' do
  scenario 'asks the user for their name and DOB' do
    visit '/'
    fill_in :name, with: 'Chris'
    fill_in :day, with: '16'
    select :november, from: 'month'
    click_button 'submit'
    expect(page).to have_content 'Happy Birthday Chris!!!'
  end
end
