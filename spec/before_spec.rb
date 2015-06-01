require "author"

fdescribe "Before 101" do

    # this directive executes every test case (every 'it' case)
    let(:author) { Author.new }

    # each    - executes this block before every test case
    # context - executes once for the whole block, 
    #           however variables used in let will not be accessible
    before(:each) do
        author.add_book 'A song of fire and ice' 
    end

    # you may access example for inspection of params for each case
    it "Add initial book" do |example|
        # puts example.inspect
        expect(author.books.count).to eq 1
    end

    it "Add another book" do
        expect(author.books.count).to eq 1
    end

end
