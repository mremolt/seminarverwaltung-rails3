require "spec_helper"

describe TeilnahmenController do
  describe "routing" do

        it "recognizes and generates #index" do
      { :get => "/teilnahmen" }.should route_to(:controller => "teilnahmen", :action => "index")
    end

        it "recognizes and generates #new" do
      { :get => "/teilnahmen/new" }.should route_to(:controller => "teilnahmen", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/teilnahmen/1" }.should route_to(:controller => "teilnahmen", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/teilnahmen/1/edit" }.should route_to(:controller => "teilnahmen", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/teilnahmen" }.should route_to(:controller => "teilnahmen", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/teilnahmen/1" }.should route_to(:controller => "teilnahmen", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/teilnahmen/1" }.should route_to(:controller => "teilnahmen", :action => "destroy", :id => "1") 
    end

  end
end
