require "ebook"

describe "eBooks - Active Record Integration" do
	
	it "Cannot create a new ebook with no title and isbn" do
	    ebook = build(:ebook)
	    expect(ebook.save).to be_falsy
	end

end
