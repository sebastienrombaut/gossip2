require 'test_helper'
class MoussaillonsControllerTest < ActionDispatch::IntegrationTest
    def setup
        @moussaillon = Moussaillon.new(username: "username", email: "user@example.com")
    end

    test "should display index page if logged in" do
        @moussaillon.save
        get new_moussaillon_session_path
        post new_moussaillon_session_path, params: { session: { email: "user@example.com", password: "foobar" }}
        assert is_logged_in?
        #get ragots_path
        #assert_response :success
    end



end