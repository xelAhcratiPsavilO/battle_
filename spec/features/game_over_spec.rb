
feature 'Game over' do
  context 'when a Player reaches 0 HP' do
    before do
      sign_in_and_play
      10.times do
        play_one_turn
      end
    end

    scenario 'that Player loses' do
      click_button 'Attack'
      expect(page).to have_content 'Alex loses!'
    end
  end
end
