describe "Composable Matchers - " do

    it "should allow multiple matchers" do
        class Book
            def initialize id, title, isbn
                @id    = id
                @title = title
                @isbn  = isbn
            end
            def serial_data
                ['X-', @title[0], @isbn[0], @id]
            end
        end

        book = Book.new 256, "Tomato", "Fruit"

    	# composable matchers allow multiple matchers on 1 expectation
        expect(book.serial_data).to contain_exactly(
            a_string_starting_with("X-"),
            a_string_starting_with("T"),
            a_string_starting_with("F"),
            a_value < 500
        )

        # Matchers
        # match [] - passes as long as all matchers are true
        # change - 
        # contain_exactly() - exact value/order
        # include
        # yield_with_args(a_string, a_hash, a_hash_including())
        # 
        # Matcher arguments
        # a_string | a_string_starting_with | a_string_ending_with
        # a_hash | a_hash_including
        # a_value | a_value_within(0.5).of(3.145)
        # an_instance_of(Array)
    end

end