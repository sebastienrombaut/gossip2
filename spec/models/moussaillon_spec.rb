require 'rails_helper'

RSpec.describe Moussaillon, type: :model do
  context 'validation tests' do

  	it 'ensures username presence' do
  		moussaillon = Moussaillon.new(email: "example@gmail.com").save
  		expect(moussaillon).to eq(false)
  	end

  	it 'ensures email presence' do
  		moussaillon = Moussaillon.new(username: "username").save
  		expect(moussaillon).to eq(false)
  	end



  end
end
