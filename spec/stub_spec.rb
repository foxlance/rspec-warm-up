require "Author"

describe "Stubbing" do

	# double() 'stands in' for an object that has yet to be developed for example
    it "Parameter should be stubbed" do
        author = Author.new

        author.add_book double(title: "The world according to Garp")

        expect(author.books.count).to eq 1 
    end

    # instance_double() checks that if an object exist, say 'Book'
    # the parameter in question should be implemented
    it "Parameter should check that object supports a data member" do
        author = Author.new

        author.add_book instance_double("Book", title: "The world according to Garp")

        expect(author.books.count).to eq 1 
    end
 
end