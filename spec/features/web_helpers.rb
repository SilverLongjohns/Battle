def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: 'Ryan'
    fill_in :player_2_name, with: 'Jake'
    click_button 'Submit'
end