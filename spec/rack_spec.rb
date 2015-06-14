require "environment"
require "rack_app"

describe "Using Rack-Test framework" do

	include Rack::Test::Methods

	# app will be referenced by rack, 
	# you need to specify which app rspec will use, in this case
	# its rack_app.rb
	let(:app) { App }

    it "creating a new ebook" do
        # post, get, put, delete - methods are provided by 
        # rack-test to test api endpoints
        # 
        # you can also do "post :ebooks" if you want to be verbose
        post "/ebooks", ebook: {title: "The silence of the lambs"}

        expect(last_response.status).to eq 201
    end

end