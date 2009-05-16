require 'test_helper'

class TestControllerTest < ActionController::TestCase
  test "that adding custom stylesheets works" do
    ControlCenter::Config.custom_css = { 
      "custom_css_1" => { :media => :all }, 
      "custom_css_2" => { :media => :print }
    }
    get :index
    
    # make sure custom_css_1 is there
    assert_select "link[href=?]", /\/stylesheets\/custom_css_1.css.*/, 
        :count => 1
    assert_select "link[media=?]", "all", :count => 1
    
    # make sure custom_css_2 is there
    assert_select "link[href=?]", /\/stylesheets\/custom_css_2.css.*/, 
        :count => 1
    assert_select "link[media=?]", "print", :count => 1
  end
  
  test "that viewing a page with no custom stylesheets works" do
    get :index
    
    assert_response :success
  end
  
  test "that viewing a page with no attributes set to a stylesheet works" do
    ControlCenter::Config.custom_css = {
      "custom_css_1" => nil
    }
    
    get :index
    
    assert_select "link[href=?]", /\/stylesheets\/custom_css_1.css.*/, 
        :count => 1
  end
  
  test "that adding custom javascripts works" do
    ControlCenter::Config.include_javascript = %w(application prototype)
    
    get :index
    
    assert_select "script[src=?]", /\/javascripts\/application.js.*/, 
        :count => 1
    assert_select "script[src=?]", /\/javascripts\/prototype.js.*/, 
        :count => 1
  end
end
