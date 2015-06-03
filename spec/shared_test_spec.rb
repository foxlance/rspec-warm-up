require "linked-list"

# Works as a shares test case between feature test
shared_examples_for "Stack" do |stack|
	it "Test empty stack" do
	    expect(stack.pop).to eq "No Data on Stack"
	end
end


describe "Shared Test - Feature 01" do

    it "Creates a new Stack" do
        stack = Stack.new

        stack.push 1
        stack.push 2
        stack.push 3

        expect(stack.pop).to eq 3
    end

	# You can reuse the shared test by passing a parameter unique to this block    
    it_behaves_like "Stack", Stack.new

end


describe "Shared Test - Feature 02" do

    it "Creates another Stack" do
        stack = Stack.new

        stack.push 1

        expect(stack.pop).to eq 1
    end
    
	# You can reuse the shared test by passing a parameter unique to this block
    it_behaves_like "Stack", Stack.new

end