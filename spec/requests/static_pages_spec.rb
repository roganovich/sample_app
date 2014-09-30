require 'spec_helper'

describe "Static pages" do
  let(:sampletext) {"Ruby on Rails Tutorial Sample App"}

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title(sampletext)
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title(sampletext)
    end

    it "should not have a custom page title" do
      visit '/static_pages/help'
      expect(page).not_to have_title('| Help')
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title(sampletext)
    end

    it "should not have a custom page title" do
      visit '/static_pages/about'
      expect(page).not_to have_title('| About Us')
    end
  end

  describe "Contacts page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/contacts'
      expect(page).to have_content('Contact Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/contacts'
      expect(page).to have_title(sampletext)
    end

    it "should not have a custom page title" do
      visit '/static_pages/contacts'
      expect(page).not_to have_title('| Contact Us')
    end
  end
end
