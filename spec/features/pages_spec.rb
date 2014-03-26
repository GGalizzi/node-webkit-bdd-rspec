require 'capybara/rspec'
require_relative '../spec_helper.rb'

describe "hello world", :type => :feature do
  before(:each) { visit_app_index }

  subject { page }

  describe "Home Page" do
    it { should have_selector('h1', text: "Hello Mundo" ) }
    it { should have_selector('li', text: "App" ) }
    it { should have_link("Bananas", href: "bananas.html") }
    it { should have_link("Pie"    , href: "pie.html") }
  end

  describe "bananas" do
    before { click_link 'Bananas' }
    it { should have_content("bananas are awesome") }
  end

  describe "pie" do
    before { click_link 'Pie' }

    it { should have_content("nom nom") }
  end

end
