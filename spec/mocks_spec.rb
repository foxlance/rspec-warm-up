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

    it "Expect multiple parameters over the course of test" do
        book_mock = double()

        # This line means that over the test course, book_mock is allowed to access the following attributes and values
        # allow(book_mock).to receive_messages(:title => 'Adventures of Huckleberry Finn', :isbn => 1234554321)

        # Using expect() though means that both attributes should be satisfied over the test course in order to pass
        expect(book_mock).to receive_messages(:title => 'Adventures of Huckleberry Finn', :isbn => 1234554321)

        expect(book_mock.title).to eq('Adventures of Huckleberry Finn')
        expect(book_mock.isbn).to eq(1234554321)
    end    

end