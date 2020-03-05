feature 'attacking player 2' do
  scenario 'can attack player and get confirmation' do
    sign_in_and_play
    click_link 'Attack!'
    expect(page).to have_content 'Player1 attacked Player2'
  end

    scenario 'player 2 hitpoints reduced when player 1 attacks' do
      sign_in_and_play
      click_link 'Attack!'
      expect(page).to_not have_content 'Player2 Health: 60'
      expect(page).to have_content 'Player2 Health: 50' 
    end
end