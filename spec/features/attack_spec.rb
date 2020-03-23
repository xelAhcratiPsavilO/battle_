feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    expect(page).to have_content 'Me attacked You'
  end
end
