require 'rails_helper'

describe "Edit author page", type: :feature do
	it "should save changes made to an author" do
		@alan = FactoryBot.create :author
		visit edit_author_path(@alan)
        page.fill_in 'author[last_name]', with: 'Rickman'
        find('input[type="submit"]').click
        visit author_path(@alan)
        expect(page).to have_text("Rickman")
	end
end
