require 'rails_helper'

RSpec.describe "Pages", :type => :request do

  describe "static pages" do
    subject { page }

    describe "home page" do
      before { visit root_path }
      it { should have_content 'Welcome' }

      describe "after sign in" do

      end
    end

    describe "about page" do
      before { visit about_path }
      it { should have_content 'About' }
    end


  end
end
