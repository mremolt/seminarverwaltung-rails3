require 'spec_helper'

describe "seminartermine/edit.html.erb" do
  before(:each) do
    @seminartermin = assign(:seminartermin, stub_model(Seminartermin,
      :new_record? => false,
      :raum => "MyString",
      :seminar => nil
    ))
  end

  it "renders the edit seminartermin form" do
    render

    rendered.should have_selector("form", :action => seminartermin_path(@seminartermin), :method => "post") do |form|
      form.should have_selector("input#seminartermin_raum", :name => "seminartermin[raum]")
      form.should have_selector("select#seminartermin_seminar_id", :name => "seminartermin[seminar_id]")
    end
  end
end
