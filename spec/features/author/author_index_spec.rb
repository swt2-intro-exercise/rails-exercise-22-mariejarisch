require 'rails_helper'

describe "Author index page", type: :feature do
	it "should contain an HTML table listing full names and homepages of all saved authors" do
		visit authors_path
		expect(page).to have_css 'table'
		expect(page).to have_text("Name")
    	expect(page).to have_text("Homepage")
    end

    #it "should link to individual author's detail pages of all saved authors" do
	#	visit authors_path	
	#end

    it "should contain a link to add new authors" do
		visit authors_path
		expect(page).to have_link 'New author', href: new_author_path
	end

	it "should be possible to delete the author" do
		@alan = FactoryBot.create :author
		visit authors_path
		expect(page).to have_link 'Delete'
	  end
end

# overview page should contain an HTML table with the headings "Name" and "Homepage",
# listing the full names as well as homepages of authors and should link to individual author's detail pages.
# The page should also contain a link to add new authors.