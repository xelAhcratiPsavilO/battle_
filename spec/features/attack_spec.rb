feature 'Attacking' do

  scenario 'attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Me attacked You'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content 'You: 60HP'
    expect(page).to have_content 'You: 50HP'
  end
end
