require 'spec_helper'

describe SeminartermineController do

  def mock_seminartermin(stubs={})
    @mock_seminartermin ||= mock_model(Seminartermin, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all seminartermine as @seminartermine" do
      st = Factory :seminartermin

      get :index
      assigns(:seminartermine).should eq([st])
      p assigns(:seminartermin)
    end
  end

  describe "GET show" do
    it "assigns the requested seminartermin as @seminartermin" do
      Seminartermin.stub(:find).with("37") { mock_seminartermin }
      get :show, :id => "37"
      assigns(:seminartermin).should be(mock_seminartermin)
    end
  end

  describe "GET new" do
    it "assigns a new seminartermin as @seminartermin" do
      Seminartermin.stub(:new) { mock_seminartermin }
      get :new
      assigns(:seminartermin).should be(mock_seminartermin)
    end
  end

  describe "GET edit" do
    it "assigns the requested seminartermin as @seminartermin" do
      Seminartermin.stub(:find).with("37") { mock_seminartermin }
      get :edit, :id => "37"
      assigns(:seminartermin).should be(mock_seminartermin)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created seminartermin as @seminartermin" do
        Seminartermin.stub(:new).with({'these' => 'params'}) { mock_seminartermin(:save => true) }
        post :create, :seminartermin => {'these' => 'params'}
        assigns(:seminartermin).should be(mock_seminartermin)
      end

      it "redirects to the created seminartermin" do
        Seminartermin.stub(:new) { mock_seminartermin(:save => true) }
        post :create, :seminartermin => {}
        response.should redirect_to(seminartermin_url(mock_seminartermin))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved seminartermin as @seminartermin" do
        Seminartermin.stub(:new).with({'these' => 'params'}) { mock_seminartermin(:save => false) }
        post :create, :seminartermin => {'these' => 'params'}
        assigns(:seminartermin).should be(mock_seminartermin)
      end

      it "re-renders the 'new' template" do
        Seminartermin.stub(:new) { mock_seminartermin(:save => false) }
        post :create, :seminartermin => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested seminartermin" do
        Seminartermin.should_receive(:find).with("37") { mock_seminartermin }
        mock_seminartermin.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :seminartermin => {'these' => 'params'}
      end

      it "assigns the requested seminartermin as @seminartermin" do
        Seminartermin.stub(:find) { mock_seminartermin(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:seminartermin).should be(mock_seminartermin)
      end

      it "redirects to the seminartermin" do
        Seminartermin.stub(:find) { mock_seminartermin(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(seminartermin_url(mock_seminartermin))
      end
    end

    describe "with invalid params" do
      it "assigns the seminartermin as @seminartermin" do
        Seminartermin.stub(:find) { mock_seminartermin(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:seminartermin).should be(mock_seminartermin)
      end

      it "re-renders the 'edit' template" do
        Seminartermin.stub(:find) { mock_seminartermin(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested seminartermin" do
      Seminartermin.should_receive(:find).with("37") { mock_seminartermin }
      mock_seminartermin.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the seminartermine list" do
      Seminartermin.stub(:find) { mock_seminartermin }
      delete :destroy, :id => "1"
      response.should redirect_to(seminartermine_url)
    end
  end

end
