require 'spec_helper'

describe "seminartermine/new.html.erb" do
  before(:each) do
    assign(:seminartermin, stub_model(Seminartermin,
      :new_record? => true,
      :raum => "MyString",
      :seminar => nil
    ))
  end

  it "renders new seminartermin form" do
    render

    rendered.should have_selector("form", :action => seminartermine_path, :method => "post") do |form|
      form.should have_selector("input#seminartermin_raum", :name => "seminartermin[raum]")
      form.should have_selector("select#seminartermin_seminar_id", :name => "seminartermin[seminar_id]")
    end
  end
end
