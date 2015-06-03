# xdescribe makes all test cases under this scenario go into skip mode
xdescribe "Skip 101" do
    
    # appending 'x' on a test case skips its execution
    xit "Assertions on equality" do
        number = 3
        expect(number).to eq 3
    end

    # skip is a more verbose way of skipping a test case
    it "Assertions on equality", skip: 'Not important for now' do
        number = 3
        expect(number).to eq 3
    end
    
    # 'pending' has been remade to instead raise a failure even on passing test
    #  this is great to use as 'mark this one' usage, e.g. future review
    it "Assertions on equality" do
        pending
        number = 3
        expect(number).to eq 3
    end

end
