require './app.rb'


feature 'Entering Names' do
    scenario 'Allows users to enter names and displays them back' do
        visit('/')
        fill_in :player_1_name, with: 'Captain Ahab'
        fill_in :player_2_name, with: 'Moby Dick'
        click_button 'Submit'
        expect(page).to have_content 'Captain Ahab vs. Moby Dick'
    end
  end