require 'spec_helper'

describe "seminars/show.html.erb" do
  before(:each) do
    @seminar = assign(:seminar, stub_model(Seminar))
  end

  it "renders attributes in <p>" do
    render
  end
end
