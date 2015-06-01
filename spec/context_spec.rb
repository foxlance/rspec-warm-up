require "book"

describe "Context 101" do
    
    # fcontext also triggers the focus feature
    context "Book class test" do
        # in a context, let allows you to have shared values/parameters across test cases
        let(:book) { Book.new('A lonely planet') }

        it "Initialize book" do    
            expect(book.title).to eq 'A lonely planet'
        end

        it "Access class method" do    
            expect(book.is_borrowed?).to eq false
        end
    end

end
