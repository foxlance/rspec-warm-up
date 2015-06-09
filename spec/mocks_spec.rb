require "Book"

describe "Mocks" do

    # mocks behaves like a stub but with a different purpose
    it "Testing mocked object" do
        book_mock = double()

        # mock objects will fail if you access a method/parameter not specified in received()
        # and_return will return a value when the receive method has been accessed
        allow(book_mock).to receive(:borrow).and_return('allow')

        is_allowed = book_mock.borrow
        expect(is_allowed).to eq "allow"
    end

    it "Expect method to be triggered/accessed" do
        book_mock = double()

        # by the end of this test, book_mock's borrow mthod should be triggered
        expect(book_mock).to receive(:borrow)

        # uncommenting the following line will fail the test as 
        # it did not meet the expectation you set in line 21
        book_mock.borrow
    end    

end