require 'spec_helper'


describe "Static pages" do

  describe "Home Page" do
    describe "GET /static_pages/home" do
      it "should have the content 'Sample App'" do
        visit '/static_pages/home'
        expect(page).to have_content('Sample App')
      end

      it "should have the title 'Home'" do
        visit '/static_pages/home'
        expect(page).to have_title('Home')
      end
    end
  end

  describe "Help Page" do
    describe "GET /static_pages/help" do
      it "should have the content 'Sample App'" do
        visit '/static_pages/help'
        expect(page).to have_content('Sample App')
      end

      it "should have the title 'Help'" do
        visit '/static_pages/help'
        expect(page).to have_title('Help')
      end
    end
  end

  describe "About Page" do
    describe "GET /static_pages/about" do
      it "should have the content 'About Us'" do
        visit '/static_pages/about'
        expect(page).to have_content('About Us')
      end

      it "should have the title 'About'" do
        visit '/static_pages/about'
        expect(page).to have_title('About')
      end
    end
  end
end
