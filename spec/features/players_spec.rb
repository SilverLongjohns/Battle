require "../app.rb"
require "spec_helper.rb"

feature Battle do
  scenario "allows a user to enter their name" do
    sign_in_and_play
    expect(page).to have_content 'Ryan: 100 vs. Jake: 100'
  end
end