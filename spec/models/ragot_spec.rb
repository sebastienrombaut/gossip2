require 'rails_helper'

RSpec.describe Ragot, type: :model do
	it 'ensures content presence' do
  		ragot = Ragot.new(moussaillon_id: 1).save
  		expect(ragot).to eq(false)
  	end

  	it 'ensures moussaillon_id presence' do
  		ragot = Ragot.new(content: "content test").save
  		expect(ragot).to eq(false)
  	end
end
