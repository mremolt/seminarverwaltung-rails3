require 'spec_helper'

describe "seminars/index.html.erb" do
  before(:each) do
    assign(:seminars, [
        stub_model(Seminar),
        stub_model(Seminar)
      ].paginate(:page => 1, :per_page => 10))
  end

  it "renders a list of seminars" do
    render
  end
end
