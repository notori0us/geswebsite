require 'test_helper'

class TrackEventTest < ActiveSupport::TestCase

	# called before every single test
	def setup
		@log = TrackEvent.new
		@log.email = 'buckeye.1@osu.edu'
		@log.year = 1
		@log.category = 'GES'
		@log.date = 2015-01-01
		@log.title = 'Basic Event'
		@log.location = 'Basic Place'
	end

	test "create basic event" do
		assert @log.save
	end

	test "create event without email" do
		@log.email = nil
		assert @log.save == false
		assert @log.errors.size == 2
	end

	test "create event not OSU email" do
		@log.email = 'email@email.com'
		assert @log.save == false
		assert @log.errors.size == 1
	end

	test "create event without year" do
		@log.year = nil
		assert @log.save == false
		assert @log.errors.size == 1
	end

	test "create event without date" do
		@log.date = nil
		assert @log.save == false
		assert @log.errors.size == 1
	end

	test "create event without category" do
		@log.category = nil
		assert @log.save == false
		assert @log.errors.size == 1
	end

	test "create event wrong category" do
		@log.category = 'yo'
		assert @log.save == false
		assert @log.errors.size == 1
	end

	test "create event without title" do
		@log.title = nil
		assert @log.save == false
		assert @log.errors.size == 1
	end

	test "create event without location" do
		@log.location = nil
		assert @log.save == false
		assert @log.errors.size == 1
	end

	test "create CS event" do
		@log.length = 3
		@log.category = 'CS'
		@log.contact = 'me'
		assert @log.save
	end

	test "create CS event without length" do
		@log.length = nil
		@log.category = 'CS'
		@log.contact = 'me'
		assert @log.save == false
	end
	
	test "create CS event without contact" do
		@log.length = 3
		@log.category = 'CS'
		@log.contact = nil
		puts @log
		assert @log.save == false
	end

end
