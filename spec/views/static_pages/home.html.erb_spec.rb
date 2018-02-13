require 'rails_helper'
include Devise::Controllers::Helpers
=begin
RSpec.describe "static_pages/home.html.erb", type: :view do
  it 'should display login page if logout' do
  	if !moussaillon_signed_in?
  	  expect(page).to have_content('Log in')
  	end
  end
=begin
  it 'displays the link to secret page if login' do
  	if logged_in?
  	  render
      assert_select "a[href=?]", static_pages_secret_path
  	  #expect(rendered).to have_link('Par ici !', static_pages_secret_path)
  	end
  end
=end


end

