require 'spec_helper'

describe "seminars/new.html.erb" do
  before(:each) do
    assign(:seminar, stub_model(Seminar,
      :new_record? => true
    ))
  end

  it "renders new seminar form" do
    render

    rendered.should have_selector("form", :action => seminars_path, :method => "post") do |form|
    end
  end
end
