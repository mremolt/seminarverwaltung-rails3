require 'spec_helper'

describe BenutzerController do

  def mock_benutzer(stubs={})
    @mock_benutzer ||= mock_model(Benutzer, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all benutzer as @benutzer" do
      Benutzer.stub(:all) { [mock_benutzer] }
      get :index
      assigns(:benutzer).should eq([mock_benutzer])
    end
  end

  describe "GET show" do
    it "assigns the requested benutzer as @benutzer" do
      Benutzer.stub(:find).with("37") { mock_benutzer }
      get :show, :id => "37"
      assigns(:benutzer).should be(mock_benutzer)
    end
  end

  describe "GET new" do
    it "assigns a new benutzer as @benutzer" do
      Benutzer.stub(:new) { mock_benutzer }
      get :new
      assigns(:benutzer).should be(mock_benutzer)
    end
  end

  describe "GET edit" do
    it "assigns the requested benutzer as @benutzer" do
      Benutzer.stub(:find).with("37") { mock_benutzer }
      get :edit, :id => "37"
      assigns(:benutzer).should be(mock_benutzer)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created benutzer as @benutzer" do
        Benutzer.stub(:new).with({'these' => 'params'}) { mock_benutzer(:save => true) }
        post :create, :benutzer => {'these' => 'params'}
        assigns(:benutzer).should be(mock_benutzer)
      end

      it "redirects to the created benutzer" do
        Benutzer.stub(:new) { mock_benutzer(:save => true) }
        post :create, :benutzer => {}
        response.should redirect_to(benutzer_url(mock_benutzer))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved benutzer as @benutzer" do
        Benutzer.stub(:new).with({'these' => 'params'}) { mock_benutzer(:save => false) }
        post :create, :benutzer => {'these' => 'params'}
        assigns(:benutzer).should be(mock_benutzer)
      end

      it "re-renders the 'new' template" do
        Benutzer.stub(:new) { mock_benutzer(:save => false) }
        post :create, :benutzer => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested benutzer" do
        Benutzer.should_receive(:find).with("37") { mock_benutzer }
        mock_benutzer.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :benutzer => {'these' => 'params'}
      end

      it "assigns the requested benutzer as @benutzer" do
        Benutzer.stub(:find) { mock_benutzer(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:benutzer).should be(mock_benutzer)
      end

      it "redirects to the benutzer" do
        Benutzer.stub(:find) { mock_benutzer(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(benutzer_url(mock_benutzer))
      end
    end

    describe "with invalid params" do
      it "assigns the benutzer as @benutzer" do
        Benutzer.stub(:find) { mock_benutzer(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:benutzer).should be(mock_benutzer)
      end

      it "re-renders the 'edit' template" do
        Benutzer.stub(:find) { mock_benutzer(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested benutzer" do
      Benutzer.should_receive(:find).with("37") { mock_benutzer }
      mock_benutzer.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the benutzer list" do
      Benutzer.stub(:find) { mock_benutzer }
      delete :destroy, :id => "1"
      response.should redirect_to(benutzer_url)
    end
  end

end
