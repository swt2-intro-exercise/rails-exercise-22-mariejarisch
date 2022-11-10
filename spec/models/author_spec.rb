require 'rails_helper'

describe "Author model", type: :model do
  
    it "Author should have first name, last name, and homepage" do
        author = Author.new(first_name: "Alan", last_name: "Turing",homepage: "http://wikipedia.org/Alan_Turing")
        expect(author.first_name).to eq("Alan")
        expect(author.last_name).to eq("Turing")
        expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
        #author = Author.new(...)
        #expect(author.first_name).to eq(...)
        #expect(author.last_name).to eq(...)
        #expect(author.homepage).to eq(...)
    end
  end