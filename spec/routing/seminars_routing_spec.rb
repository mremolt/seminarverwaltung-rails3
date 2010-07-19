require "spec_helper"

describe SeminarsController do
  describe "routing" do

        it "recognizes and generates #index" do
      { :get => "/seminars" }.should route_to(:controller => "seminars", :action => "index")
    end

        it "recognizes and generates #new" do
      { :get => "/seminars/new" }.should route_to(:controller => "seminars", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/seminars/1" }.should route_to(:controller => "seminars", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/seminars/1/edit" }.should route_to(:controller => "seminars", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/seminars" }.should route_to(:controller => "seminars", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/seminars/1" }.should route_to(:controller => "seminars", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/seminars/1" }.should route_to(:controller => "seminars", :action => "destroy", :id => "1") 
    end

  end
end
