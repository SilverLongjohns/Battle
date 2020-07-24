require "./app.rb"

feature Battle do
  scenario "multiple attacks" do
    sign_in_and_play
    click_button("Attack!")
    click_button("Confirm")
    click_button("Attack!")
    click_button("Confirm")
    click_button("Attack!")
    expect(page).to have_content("It's Jake's turn!")
  end
end