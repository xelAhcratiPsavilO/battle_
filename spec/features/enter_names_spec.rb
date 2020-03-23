feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Me'
    fill_in :player_2_name, with: 'You'
    click_button 'Submit'
    expect(page).to have_content 'Me vs You'
  end
end
