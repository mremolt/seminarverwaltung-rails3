require 'spec_helper'

describe TeilnahmenController do

  def mock_teilnahme(stubs={})
    @mock_teilnahme ||= mock_model(Teilnahme, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all teilnahmen as @teilnahmen" do
      Teilnahme.stub(:all) { [mock_teilnahme] }
      get :index
      assigns(:teilnahmen).should eq([mock_teilnahme])
    end
  end

  describe "GET show" do
    it "assigns the requested teilnahme as @teilnahme" do
      Teilnahme.stub(:find).with("37") { mock_teilnahme }
      get :show, :id => "37"
      assigns(:teilnahme).should be(mock_teilnahme)
    end
  end

  describe "GET new" do
    it "assigns a new teilnahme as @teilnahme" do
      Teilnahme.stub(:new) { mock_teilnahme }
      get :new
      assigns(:teilnahme).should be(mock_teilnahme)
    end
  end

  describe "GET edit" do
    it "assigns the requested teilnahme as @teilnahme" do
      Teilnahme.stub(:find).with("37") { mock_teilnahme }
      get :edit, :id => "37"
      assigns(:teilnahme).should be(mock_teilnahme)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created teilnahme as @teilnahme" do
        Teilnahme.stub(:new).with({'these' => 'params'}) { mock_teilnahme(:save => true) }
        post :create, :teilnahme => {'these' => 'params'}
        assigns(:teilnahme).should be(mock_teilnahme)
      end

      it "redirects to the created teilnahme" do
        Teilnahme.stub(:new) { mock_teilnahme(:save => true) }
        post :create, :teilnahme => {}
        response.should redirect_to(teilnahme_url(mock_teilnahme))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved teilnahme as @teilnahme" do
        Teilnahme.stub(:new).with({'these' => 'params'}) { mock_teilnahme(:save => false) }
        post :create, :teilnahme => {'these' => 'params'}
        assigns(:teilnahme).should be(mock_teilnahme)
      end

      it "re-renders the 'new' template" do
        Teilnahme.stub(:new) { mock_teilnahme(:save => false) }
        post :create, :teilnahme => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested teilnahme" do
        Teilnahme.should_receive(:find).with("37") { mock_teilnahme }
        mock_teilnahme.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :teilnahme => {'these' => 'params'}
      end

      it "assigns the requested teilnahme as @teilnahme" do
        Teilnahme.stub(:find) { mock_teilnahme(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:teilnahme).should be(mock_teilnahme)
      end

      it "redirects to the teilnahme" do
        Teilnahme.stub(:find) { mock_teilnahme(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(teilnahme_url(mock_teilnahme))
      end
    end

    describe "with invalid params" do
      it "assigns the teilnahme as @teilnahme" do
        Teilnahme.stub(:find) { mock_teilnahme(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:teilnahme).should be(mock_teilnahme)
      end

      it "re-renders the 'edit' template" do
        Teilnahme.stub(:find) { mock_teilnahme(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested teilnahme" do
      Teilnahme.should_receive(:find).with("37") { mock_teilnahme }
      mock_teilnahme.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the teilnahmen list" do
      Teilnahme.stub(:find) { mock_teilnahme }
      delete :destroy, :id => "1"
      response.should redirect_to(teilnahmen_url)
    end
  end

end
