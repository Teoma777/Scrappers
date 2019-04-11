require_relative '../lib/01_scrapp'

describe 'the  crypto_scrapper function ' do 
	it "should return arrays from url" do 
		expect(crypto_scrapper).to be_an_instance_of(Array)
	end
end