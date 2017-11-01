require 'csv'

class HoursValidator < ActiveModel::Validator
  def validate(record)
    unless record.length.nil? or record.length % 0.5 == 0
      record.errors[:length] << 'should be a multiple of 0.5'
    end
  end
end

class TrackEvent < ApplicationRecord

  # validate and do a dropdown for category_options and year_options
  CATEGORY_OPTIONS = [
    #'Community Service',
    'CS',
    #'Green Engineering Scholars',
    'GES',
    #'Long Term Event (Second Years Only)'
    'LTE',

    # special cases
    'CSGES',
    '2GES',
    '3GES'
  ]

  validates_inclusion_of :category, :in => CATEGORY_OPTIONS

  YEAR_OPTIONS = [
    1,
    2
  ]

  validates_inclusion_of :year, :in => YEAR_OPTIONS

  # everything is required except extra info
  validates_presence_of :start_time
  validates_presence_of :date
  validates_presence_of :location
  validates_presence_of :description
  validates_presence_of :title

  # Ohio State Emails
  # name.#@osu.edu
  validates :email, presence: true, format: {
    with: /\A[a-z\-]+\.[0-9]+@osu\.edu\z/,
    message: "must be a lowercase OSU email (no 'buckeyemail')"
  }

  # CS events require contact information
  validates_presence_of :contact, :if => lambda {
    self.category == 'CS' or self.category == 'CSGES'
  },
  message: "can't be blank for community service events"
  validates_presence_of :contact_name, :if => lambda {
    self.category == 'CS' or self.category == 'CSGES'
  },
  message: "can't be blank for community service events"

  # CS events require a length in 1/2 hours
  validates_presence_of :length, :if => lambda {
    self.category == 'CS' or self.category == 'CSGES'
  },
  message: "can't be blank for community service events"
  validates :length, :numericality => { :greater_than_or_equal_to => 0 }, :if => lambda {
    self.category == 'CS' or self.category == 'CSGES'
  }
  validates :length, hours: true, :if => lambda {
    self.category == 'CS' or self.category == 'CSGES'
  }

  def self.as_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |item|
        csv << item.attributes.values_at(*column_names)
      end
    end
  end

end
