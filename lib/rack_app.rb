class App < Sinatra::Base
	post "/ebooks" do
		ebook = Ebook.new params[:ebook]

		if ebook.save
			status 201
		else
			status 502
		end
	end
end