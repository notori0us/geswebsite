require 'test_helper'

class TrackEventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # en

  test "create track an event" do
	  log = TrackEvent.new
	  assert log.save
  end


end
