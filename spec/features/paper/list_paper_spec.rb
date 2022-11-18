require 'rails_helper'

describe "List Papers", type: :feature do
	it "should be possible to filter papers by year" do
        @paper = FactoryBot.create :paper
        @papers = Paper.specific_year(1950)
        expect(@papers).to include(@paper)
    end
end