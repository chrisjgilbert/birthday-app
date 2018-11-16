feature 'displays a celebration message' do
  scenario 'wishes a user happy birthday if it is there birthday' do
    visit '/'
    fill_in :name, with: 'Chris'
    fill_in :day, with: '16'
    select :november, from: 'month'
    select '2018', from: 'year'
    click_button 'submit'
    expect(page).to have_content 'Happy Birthday Chris!!!'
  end
end
