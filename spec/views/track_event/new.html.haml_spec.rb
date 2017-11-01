require 'rails_helper'

RSpec.describe 'track_events/new.html.haml' do
  context 'when the form has errors' do
    it 'displays the fact that the log did not save' do

      log = build(:track_event, email: '')
      log.save # will have errors
      assign(:log, log)

      render

      expect(rendered).to have_text "Your log was not saved"
    end
  end

  context 'when the form does not have errors' do
    it 'does not display that the log did not save' do
      assign(:log, build(:track_event)) #mock empty TrackEvent

      render

      expect(rendered).to_not have_text "Your log was not saved"
    end
  end
end
