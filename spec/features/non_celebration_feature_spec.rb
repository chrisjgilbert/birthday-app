feature 'displays a non celebration message' do
  scenario 'shows user how many days until their birthday' do
    visit '/'
    fill_in :name, with: 'Chris'
    fill_in :day, with: '16'
    select :november, from: 'month'
    select '2019', from: 'year'
    click_button 'submit'
    expect(page).to have_content 'There are 365 days until your birthday!'
  end
end
