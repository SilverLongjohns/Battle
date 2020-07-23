require "../app.rb"
require "spec_helper.rb"

feature Battle do
  scenario "displays the hitpoints of each player" do
    sign_in_and_play
    expect(page).to have_content 'Ryan: 100 vs. Jake: 100'
  end

  scenario "my attack reduces the hitpoints of the opponent" do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("Ryan attacked! Jake's HP is now 90!")
  end
end