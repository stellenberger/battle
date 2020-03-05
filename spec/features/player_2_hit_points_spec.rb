feature 'checking that it returns player hitpoints' do
  scenario 'Can run app and check page content' do
    sign_in_and_play
    expect(page).to have_content 'Player2 Health: 60'
  end
end