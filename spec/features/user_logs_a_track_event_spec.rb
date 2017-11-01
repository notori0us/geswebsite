require 'rails_helper'

RSpec.feature "UserLogsATrackEvent", type: :feature do

    scenario 'they can see the page' do
        visit new_track_event_path

        expect(page).to have_content 'Log an Event'
    end

    scenario 'they can save a CS event' do
        visit new_track_event_path

        fill_in 'Ohio State Email', with: 'test.123@osu.edu'
        select 'First', from: 'Year'
        select 'Community Service', from: 'Category'
        fill_in 'Title', with: 'Feature Test Title'
        fill_in 'Description', with: 'Feature Test Description'
        fill_in 'Location', with: 'Feature Test Location'
        fill_in 'Date', with: '2017-01-01'
        fill_in 'Start time', with: 'Feature Test Start Time'
        fill_in 'Length', with: 1.5
        fill_in 'Contact person', with: 'Feature Test Contact Person'
        fill_in 'Contact email', with: 'Feature Test Contact Email'

        click_button 'Submit'

        expect(page).to have_content 'Success'
    end

    scenario 'they can save a GES event' do
        visit new_track_event_path

        fill_in 'Ohio State Email', with: 'test.123@osu.edu'
        select 'First', from: 'Year'
        select '1 GES Event', from: 'Category'
        fill_in 'Title', with: 'Feature Test Title'
        fill_in 'Description', with: 'Feature Test Description'
        fill_in 'Location', with: 'Feature Test Location'
        fill_in 'Date', with: '2017-01-01'
        fill_in 'Start time', with: 'Feature Test Start Time'

        click_button 'Submit'

        expect(page).to have_content 'Success'
    end

    scenario 'they cannot save a GES event- missing date' do
        visit new_track_event_path

        fill_in 'Ohio State Email', with: 'test.123@osu.edu'
        select 'First', from: 'Year'
        select '1 GES Event', from: 'Category'
        fill_in 'Title', with: 'Feature Test Title'
        fill_in 'Description', with: 'Feature Test Description'
        fill_in 'Location', with: 'Feature Test Location'
        fill_in 'Start time', with: 'Feature Test Start Time'

        click_button 'Submit'

        expect(page).to have_content 'was not saved'
    end


end
