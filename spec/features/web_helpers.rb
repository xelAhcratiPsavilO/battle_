def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: 'Me'
    fill_in :player_2_name, with: 'You'
    click_button 'Submit'
end
