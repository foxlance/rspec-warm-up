describe "Matchers 101" do
    it "Assertions on equality" do
        number = 3
        expect(number).to eq 3
    end

    it "Assertions on math operators" do
    	number = 5
    	expect(number).to be >= 5
    end

    it "Assertions on matching regular expression" do
        email = 'lancevincent@gmail.com'
        regular_expression = /^\w+@\w+\.[a-z]{2,4}$/

        expect(email).to match regular_expression 
    end

    it "Assertions on types and classes" do
        object = 2.3

        expect(object).to be_a Float #Integer, Numeric (float and fixednum) etc
    end

    it "Assertions on thruthiness" do
        bool = true 
        falsy = false
        nil_val = nil
        one = 1
        object = Class.new

        expect(bool).to be true
        expect(one).to be_truthy
        expect(object).to be_truthy

        expect(falsy).to be false

        expect(nil_val).to be_falsy
        expect(nil_val).to be nil
    end

    it "Handle errors and exeptions" do
        expect do
        	raise Exception 
        end.to raise_error #generic, any error is accepted

        expect do
        	raise ArgumentError 
        end.to raise_error ArgumentError
    end

    it "Handle throws" do
        expect {
        	throw :oops
    	}.to throw_symbol #generic, any symbol is accepted

        expect {
        	throw :diditagain
    	}.to throw_symbol :diditagain
    end

    it "Assertions on predicates" do
        class Anyclass
            def good?
            	return true
            end
        end	

        expect(Anyclass.new).to be_good #predicates allows you to check method ending in ?
    end

    it "Collections" do
        list = ['one', 'two', 'three', 'four']
        list2 = [:one, :two, :three, :four]

        expect(list).to include 'four'
        expect(list2).to include :one
        expect(list2).to start_with :one
        expect(list2).to end_with :four
        expect(list2).to start_with [:one, :two]
    end

    it "Negation" do
        expect(3).not_to be 5
    end

end
