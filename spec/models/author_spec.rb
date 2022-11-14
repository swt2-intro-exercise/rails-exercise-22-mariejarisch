require 'rails_helper'

describe "Author model", type: :model do
  
    it "Author should have first name, last name, and homepage" do
        author = Author.new(first_name: "Alan", last_name: "Turing",homepage: "http://wikipedia.org/Alan_Turing")
        expect(author.first_name).to eq("Alan")
        expect(author.last_name).to eq("Turing")
        expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
        expect(author.name).to eq("Alan Turing")
    end

    it "should fail validation when a new author is created without last name" do
        author = Author.new(first_name: "Alan", last_name: "", homepage: "http://wikipedia.org/Alan_Turing")
		expect(author).to_not be_valid
	end
end