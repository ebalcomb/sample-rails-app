require 'spec_helper'


describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home Page" do
    describe "GET /static_pages/home" do
      it "should have the content 'Sample App'" do
        visit '/static_pages/home'
        expect(page).to have_content('Sample App')
      end

      it "should have the base title" do
        visit '/static_pages/home'
        expect(page).to have_title("#{base_title}")
      end

      it "should not have a custom page title" do
        visit '/static_pages/home'
        expect(page).not_to have_title('| Home')
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
        expect(page).to have_title("#{base_title} | Help")
      end
    end
  end

  describe "Contact Page" do
    describe "GET /static_pages/contact" do
      it "should have the content 'Contact Us'" do
        visit '/static_pages/contact'
        expect(page).to have_content('Contact')
      end

      it "should have the title 'Contact'" do
        visit "/static_pages/contact"
        expect(page).to have_title("#{base_title} | Contact")
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
        expect(page).to have_title("#{base_title} | About")
      end
    end
  end
end
