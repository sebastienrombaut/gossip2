require 'test_helper'

class MoussaillonsControllerTest < ActionDispatch::IntegrationTest
	include  Devise::Test::IntegrationHelpers

    def setup
        @moussaillon = Moussaillon.create(username: "Test", email: "test@gmail.com", password: "foobar", password_confirmation: "foobar", sign_up_code: "bro")

    end

    test "should display index page if logged in" do
        @moussaillon.save
        get new_moussaillon_session_path
        post new_moussaillon_session_path, params: { moussaillon: { username: "Test", email: "test@gmail.com", password: "foobar", password_confirmation: "foobar", sign_up_code: "bro"}}
        get ragots_path
        assert_response :success
        end

    test "redirect to ragot if sign up" do
	    get new_moussaillon_registration_path
	    post moussaillon_registration_path, params: { moussaillon: { username: @moussaillon.username, email: @moussaillon.email, password: @moussaillon.password, password_confirmation: @moussaillon.password_confirmation, sign_up_code: @moussaillon.sign_up_code } }
	    sign_in(@moussaillon)
	    get ragots_path


	    assert_template "layouts/_header"
	    assert_template 'layouts/application'

	    end
	    


end