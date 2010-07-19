require 'spec_helper'

describe "seminars/index.html.erb" do
  before(:each) do
    assign(:seminars, [
      stub_model(Seminar),
      stub_model(Seminar)
    ])
  end

  it "renders a list of seminars" do
    render
  end
end
