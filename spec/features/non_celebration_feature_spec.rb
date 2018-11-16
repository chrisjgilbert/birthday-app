feature 'displays a non celebration message' do
  scenario 'shows user how many days until their birthday' do
    visit '/'
    fill_in :name, with: 'Chris'
    fill_in :day, with: '25'
    select :december, from: 'month'
    click_button 'submit'
    expect(page).to have_content 'There are 39 days until your birthday!'
  end
end
