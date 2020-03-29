def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Christina'
  fill_in :player_2_name, with: 'Alex'
  click_button 'Submit'
end

def play_one_turn
  click_link 'Attack'
  click_link 'OK'
end
