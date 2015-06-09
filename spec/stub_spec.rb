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


    it "Use a different approach to stubbing" do
        author = Author.new

        book_stub = instance_double "Book"
        allow(book_stub).to receive(:title).and_return("The world according to Garp", "Coffee Prince")

        # When using and_return with multiple values, 
        # you need to call the action with the same number of times
        # 
        # or you can do the following like so:
        # 
        # 2.times { author.add_book book_stub }
        # 
        author.add_book book_stub
        expect(author.books[0].title).to eq "The world according to Garp"

        # Here, you are passing "Coffee Price", since this is the second pass
        author.add_book book_stub
        expect(author.books[1].title).to eq "Coffee Prince"
        expect(author.books.count).to eq 2
    end
    
 
end