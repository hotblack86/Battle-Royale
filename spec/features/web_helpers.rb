
def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: 'Captain Ahab'
    fill_in :player_2_name, with: 'Moby Dick'
    click_button 'Submit'
end