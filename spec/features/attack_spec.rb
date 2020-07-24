require "../app.rb"
require "spec_helper.rb"

feature Battle do
    scenario "allows a user to attack" do
        sign_in_and_play
        click_button('Attack')
        expect(page).to have_content("Ryan attacked! Jake's HP is now 90!")
    end

    scenario "ends the game" do
        sign_in_and_play
        end_game
        click_button("You win!")
        expect(page).to have_content("Congratulations!")
    end    
end