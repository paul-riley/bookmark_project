require 'spec_helper'
#require 'factory_girl'

describe "Bookmarks App" do

  describe "bookmarks" do
    it "should have the content 'Bookmark List'" do
       visit '/bookmarks'
      page.should have_content('Bookmark List')
    end
  end

  describe "bookmarks new" do
    it "should have the content 'Bookmark'" do
      visit '/bookmarks/new'
     page.should have_content('Bookmark')
    end
  end

# I tried to test the form! I couldn't get the factory girl to work. We didn't even touch on testing form validation!
#
#  describe "bookmark form" do
#   it "tests filling in the bookmarks" do
#      test = FactoryGirl.create(:test, :name => 'Slashdot', :Url => 'http://slashdot.org')
#      visit "/bookmarks"
#      fill_in "Name", :with => "Slashdot"
#      fill_in "Url", :with => 'http://slashdot.org'
#      click_button "Create Bookmark"
#
#      expect(page).to have_content('http://slashdot.org')
#    end
# end

end
