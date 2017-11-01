require 'rails_helper'

RSpec.describe TrackEvent, type: :model do
  context "for all types of events" do
    it "validates osu email" do
      event = build(:track_event, email: 'test.123@osu.edu')

      expect(event).to be_valid
    end

    it "validates osu email with a hyphen" do
      event = build(:track_event, email: 'hpyhenated-name.1@osu.edu')

      expect(event).to be_valid
    end

    it "is invalid for a bad osu email" do
      event = build(:track_event, email: 'test@gmail.com')

      expect(event).to_not be_valid
    end

    it "is invalid without start_time" do
      event = build(:track_event, start_time: '')

      expect(event).to_not be_valid
    end

    it "is invalid without date" do
      event = build(:track_event, date: '')

      expect(event).to_not be_valid
    end

    it "is invalid without location" do
      event = build(:track_event, location: '')

      expect(event).to_not be_valid
    end

    it "is invalid without description" do
      event = build(:track_event, description: '')

      expect(event).to_not be_valid
    end

    it "is invalid without title" do
      event = build(:track_event, title: '')

      expect(event).to_not be_valid
    end
  end

  context "for cs events" do
    it "is valid" do
      event = build(:cs_event)

      expect(event).to be_valid
    end

    it "is valid with a length divisible by 0.5" do
      event = build(:cs_event, length: 1.5)

      expect(event).to be_valid
    end

    it "is invalid without contact (email or phone or whatever)" do
      event = build(:cs_event, contact: '')

      expect(event).to_not be_valid
    end
    it "is invalid without contact_name" do
      event = build(:cs_event, contact_name: '')

      expect(event).to_not be_valid
    end

    it "is invalid without length" do
      event = build(:cs_event, length: '')

      expect(event).to_not be_valid
    end

    it "is invalid when length is not multiple of 0.5" do
      event = build(:cs_event, length: 0.3)

      expect(event).to_not be_valid
    end

    it "is invalid when length is negative" do
      event = build(:cs_event, length: -1.5)

      expect(event).to_not be_valid
    end

  end
end
