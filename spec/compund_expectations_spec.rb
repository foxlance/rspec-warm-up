describe "Compund Matchers" do
    
    it "Allows for multiple expectations" do
        string = "lance"

        expect(string).to start_with("l").and end_with("e") # multiple conditions
        expect(string).to start_with("l").or end_with("e") # multiple conditions
        expect(20).to be_between(1,20) #be_between().exclusive

    end
    
end