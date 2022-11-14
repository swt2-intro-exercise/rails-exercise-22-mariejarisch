require 'rails_helper'

describe "Paper model", type: :model do
  
    it "should fail validation when a new paper is created without having a title" do
      paper = Paper.new(title: "", venue: "HPI", year: 2020)
      expect(paper).to_not be_valid
    end
  
    it "should fail validation when a new paper is created without having a venue" do
      paper = Paper.new(title: "Skalierbare Softwareentwicklung", venue: "", year: 2020)
      expect(paper).to_not be_valid
    end

    it "should fail validation when a new paper is created without having a year" do
        paper = Paper.new(title: "Skalierbare Softwareentwicklung", venue: "HPI", year: "")
		    expect(paper).to_not be_valid
	  end

    it "should fail validation when a new paper is created with year not being a numerical value" do
      paper = Paper.new(title: "Skalierbare Softwareentwicklung", venue: "HPI", year: "x")
      expect(paper).to_not be_valid
  end
end
