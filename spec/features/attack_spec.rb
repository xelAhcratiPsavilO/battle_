feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Christina attacked Alex'
  end

  scenario 'attack Player 1' do
    sign_in_and_play
    play_one_turn
    click_button 'Attack'
    expect(page).to have_content 'Alex attacked Christina'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Alex: 60HP'
    expect(page).to have_content 'Alex: 50HP'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    play_one_turn
    click_button 'Attack'
    expect(page).not_to have_content 'Christina: 60HP'
    expect(page).to have_content 'Christina: 50HP'
  end
end
