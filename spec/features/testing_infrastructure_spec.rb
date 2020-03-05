# require './app.rb'
# You actually dont need to require the file? maybe because 
# of the spec helper file 
# Below is my take on the test
# RSpec.feature "Testing output", :type => :feature do
#   scenario "Tests the output of the page" do
#     visit "/"
#     expect(page).to have_text("Testing infrastructure!")
#   end
# end
# # This is the walkthrough take on the test
# feature 'testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure!'
#   end
# end