require 'spec_helper'

describe PagesController do
  render_views
  
  before(:each) do
    @base_title = "pakpak - The Ultimate Packing List"
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end
  
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have title" do
      get 'about'
      response.should have_selector("title",
                          :content => 
                          @base_title + " | About") 
    end
  end
  
  describe "GET 'help'" do
    it "should be successful" do
    get 'help'
    response.should be_success
    end
  end



end
