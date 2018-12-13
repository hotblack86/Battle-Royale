require './app.rb'


feature 'Hit Points' do
    scenario 'Allows user to see HP of opponent' do
        sign_in_and_play
        click_link 'Attack'
        expect(page).to have_content 'Captain Ahab attacked Moby Dick'
    end
  end