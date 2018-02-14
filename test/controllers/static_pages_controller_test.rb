require 'test_helper'
class StaticPagesControllerTest < ActionDispatch::IntegrationTest
    def setup
        @moussaillon = Moussaillon.new(username: "username", email: "user@example.com")
    end

	test "should redirect to sign in page if not logged in" do
        get ragots_path
        assert_redirected_to new_moussaillon_session_path
        
    end

    

=begin
	test "should subscribe user with the right code" do
		@moussaillon.save
        get new_moussaillon_registration_path
        post new_moussaillon_registration_path, params: { moussaillon: { email: @moussaillon.email, 
        	username: @moussaillon.username, password: "foobar", password_confirmation: "foobar", sign_up_code: "bro"}}

        assert_redirected_to ragots_path
        
    end

=end
end
