require 'spec_helper'

describe SeminarsController do

  def mock_seminar(stubs={})
    @mock_seminar ||= mock_model(Seminar, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all seminars as @seminars" do
      seminar = Factory :seminar
      get :index
      assigns(:seminars).should eq([seminar])
    end
  end

  describe "GET show" do
    it "assigns the requested seminar as @seminar" do
      Seminar.stub(:find).with("37") { mock_seminar }
      get :show, :id => "37"
      assigns(:seminar).should be(mock_seminar)
    end
  end

  describe "GET new" do
    it "assigns a new seminar as @seminar" do
      Seminar.stub(:new) { mock_seminar }
      get :new
      assigns(:seminar).should be(mock_seminar)
    end
  end

  describe "GET edit" do
    it "assigns the requested seminar as @seminar" do
      Seminar.stub(:find).with("37") { mock_seminar }
      get :edit, :id => "37"
      assigns(:seminar).should be(mock_seminar)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created seminar as @seminar" do
        Seminar.stub(:new).with({'these' => 'params'}) { mock_seminar(:save => true) }
        post :create, :seminar => {'these' => 'params'}
        assigns(:seminar).should be(mock_seminar)
      end

      it "redirects to the created seminar" do
        Seminar.stub(:new) { mock_seminar(:save => true) }
        post :create, :seminar => {}
        response.should redirect_to(seminar_url(mock_seminar))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved seminar as @seminar" do
        Seminar.stub(:new).with({'these' => 'params'}) { mock_seminar(:save => false) }
        post :create, :seminar => {'these' => 'params'}
        assigns(:seminar).should be(mock_seminar)
      end

      it "re-renders the 'new' template" do
        Seminar.stub(:new) { mock_seminar(:save => false) }
        post :create, :seminar => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested seminar" do
        Seminar.should_receive(:find).with("37") { mock_seminar }
        mock_seminar.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :seminar => {'these' => 'params'}
      end

      it "assigns the requested seminar as @seminar" do
        Seminar.stub(:find) { mock_seminar(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:seminar).should be(mock_seminar)
      end

      it "redirects to the seminar" do
        Seminar.stub(:find) { mock_seminar(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(seminar_url(mock_seminar))
      end
    end

    describe "with invalid params" do
      it "assigns the seminar as @seminar" do
        Seminar.stub(:find) { mock_seminar(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:seminar).should be(mock_seminar)
      end

      it "re-renders the 'edit' template" do
        Seminar.stub(:find) { mock_seminar(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested seminar" do
      Seminar.should_receive(:find).with("37") { mock_seminar }
      mock_seminar.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the seminars list" do
      Seminar.stub(:find) { mock_seminar }
      delete :destroy, :id => "1"
      response.should redirect_to(seminars_url)
    end
  end

end
