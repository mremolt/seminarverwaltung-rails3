require "spec_helper"

describe SeminartermineController do
  describe "routing" do

        it "recognizes and generates #index" do
      { :get => "/seminartermine" }.should route_to(:controller => "seminartermine", :action => "index")
    end

        it "recognizes and generates #new" do
      { :get => "/seminartermine/new" }.should route_to(:controller => "seminartermine", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/seminartermine/1" }.should route_to(:controller => "seminartermine", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/seminartermine/1/edit" }.should route_to(:controller => "seminartermine", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/seminartermine" }.should route_to(:controller => "seminartermine", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/seminartermine/1" }.should route_to(:controller => "seminartermine", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/seminartermine/1" }.should route_to(:controller => "seminartermine", :action => "destroy", :id => "1") 
    end

  end
end
