require './app.rb'
require './lib/player.rb'


feature 'Entering Names' do
    scenario 'Allows users to enter names and displays them back' do
        sign_in_and_play
        expect(page).to have_content 'Captain Ahab vs. Moby Dick'
    end
  end