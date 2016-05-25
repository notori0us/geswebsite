require 'test_helper'

class WelcomePageControllerTest < ActionController::TestCase
	# test the homepage, does it load the welcome template?
	# does it load the navbar / application layout?
	test "should get welcome" do
		get :welcome
		assert_template :welcome
		assert_template layout: "layouts/application"
		assert_response :success
	end

end
