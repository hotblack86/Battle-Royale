require './app.rb'
require './lib/player.rb'


feature 'Hit Points' do
    scenario 'Allows user to see HP of opponent' do
        sign_in_and_play
        expect(page).to have_content 'Moby Dick: 100 HP'
    end
  end