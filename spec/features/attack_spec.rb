feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Christina attacked Alex'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content 'Alex: 60HP'
    expect(page).to have_content 'Alex: 50HP'
  end
end
