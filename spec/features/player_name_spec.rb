feature 'testing that names are shown on the page' do
  scenario 'Can run app and check page content' do
    sign_in_and_play
    expect(page).to have_content 'Player1 VS. Player2'
  end
end