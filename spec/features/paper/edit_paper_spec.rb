require 'rails_helper'

describe "Edit paper page", type: :feature do
    it "should allow the selection of multiple authors" do
        @paper = FactoryBot.create :paper
        visit edit_paper_path(@paper)
        expect(page).to have_css('select[multiple]')
    end
end

#describe "Edit paper page", type: :feature do
#	it "should save changes made to a paper" do
#		@paper1 = FactoryBot.create :paper
#		visit edit_paper_path(@paper1)
#        page.fill_in 'paper[venue]', with: 'Mind 49'
#        find('input[type="submit"]').click
#        visit author_path(@paper1)
#        expect(page).to have_text("Mind 49")
#	end
#end
