require 'spec_helper'

describe "seminars/edit.html.erb" do
  before(:each) do
    @seminar = assign(:seminar, stub_model(Seminar,
      :new_record? => false
    ))
  end

  it "renders the edit seminar form" do
    render

    rendered.should have_selector("form", :action => seminar_path(@seminar), :method => "post") do |form|
    end
  end
end
