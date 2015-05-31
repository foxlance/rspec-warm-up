# the following scenario requires you to execute `rspec --tag focus`

# fdescribe makes all test cases under this scenario go into focus/priority mode
fdescribe "Focus 101" do

    # appending 'f' on a test case focuses its execution
    fit "Assertions on equality" do
        number = 3
        expect(number).to eq 3
    end

    # focus is a more verbose way of focusing a test case
    it "Assertions on equality", focus: true do
        number = 3
        expect(number).to eq 3
    end

end
