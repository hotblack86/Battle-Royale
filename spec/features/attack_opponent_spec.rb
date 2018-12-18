require './app.rb'
require './lib/player.rb'


feature 'Attack Player 2' do
    scenario 'Allows user to attack opponent and see new HP' do
        sign_in_and_play
        click_link 'Attack'
        expect(page).to have_content 'Captain Ahab attacked Moby Dick!'
        expect(page).to have_content 'Moby Dick: 90 HP'
    end
  end