require 'rails_helper'

describe "Show Paper page", type: :feature do
	it "should display paper's author's full name" do
		@paper1 = FactoryBot.create :paper
		visit paper_path(@paper1)
	end
end