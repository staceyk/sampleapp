require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the h1 'SampleApp'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('SampleApp')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'SampleApp')
    end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
	  	visit '/static_pages/help'
	  	page.should have_selector('h1', :text => 'Help')
		end
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial SampleApp | Help")
    end
  end

  describe "About page" do
  	it "should have the content 'About'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', :text => 'About Us')
  	end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial SampleApp | About")
    end
  end
end

