require "./app"

feature Battle do
  scenario "can switch turns" do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content("It's Jake's turn!")
  end
end