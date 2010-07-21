require "spec_helper"

describe BenutzerController do
  describe "routing" do

        it "recognizes and generates #index" do
      { :get => "/benutzer" }.should route_to(:controller => "benutzer", :action => "index")
    end

        it "recognizes and generates #new" do
      { :get => "/benutzer/new" }.should route_to(:controller => "benutzer", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/benutzer/1" }.should route_to(:controller => "benutzer", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/benutzer/1/edit" }.should route_to(:controller => "benutzer", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/benutzer" }.should route_to(:controller => "benutzer", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/benutzer/1" }.should route_to(:controller => "benutzer", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/benutzer/1" }.should route_to(:controller => "benutzer", :action => "destroy", :id => "1") 
    end

  end
end
