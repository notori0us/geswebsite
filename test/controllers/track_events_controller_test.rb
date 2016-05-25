require 'test_helper'

class TrackEventsControllerTest < ActionController::TestCase
	test "should show new" do
		get :new
		assert_template :new
		assert_template layout: "layouts/application"
	end

	test "should create log" do
		body = {
			title: 'Title',
			email: 'buckeye.1@osu.edu',
			year: 1,
			category: 'GES',
			location: 'A location',
			date: '2015-01-01'
		}
		assert_difference('TrackEvent.count') do
			post :create, track_event: body
		end
		assert_redirected_to track_events_saved_path
	end

	test "test not osu email" do
		body = {
			title: 'Title',
			email: 'buckeye@osu.edu',
			year: 1,
			category: 'GES',
			location: 'A location',
			date: '2015-01-01'
		}

		assert_no_difference('TrackEvent.count') do
			post :create, track_event: body
		end
		assert_equal 'is not a lowercase osu email', assigns(:log).errors[:email][0]
	end

	# todo test admin view and CSV downloading
end
