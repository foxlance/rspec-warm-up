require "book"

describe "Testing a Class" do

    it "Initialize a class" do
        expect(Book.new "Earthsong").to be_truthy
    end

    it "Method should respond" do
        expect(Book.new("Earthsong").borrow).to include "allow"
    end

    it "Data member should be accessible" do
        expect(Book.new("Earthsong").title).to eq "Earthsong"
    end

end