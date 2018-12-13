require './app.rb'


feature 'Hit Points' do
    scenario 'Allows user to see HP of opponent' do
        visit('/')
        fill_in :player_1_name, with: 'Captain Ahab'
        fill_in :player_2_name, with: 'Moby Dick'
        click_button 'Submit'
        expect(page).to have_content 'Moby Dick: 100 HP'
    end
  end