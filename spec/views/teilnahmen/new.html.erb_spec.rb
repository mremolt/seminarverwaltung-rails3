require 'spec_helper'

describe "teilnahmen/new.html.erb" do
  before(:each) do
    assign(:teilnahme, stub_model(Teilnahme,
      :new_record? => true,
      :seminartermin => nil,
      :benutzer => nil
    ))
  end

  it "renders new teilnahme form" do
    render

    rendered.should have_selector("form", :action => teilnahmen_path, :method => "post") do |form|
      form.should have_selector("input#teilnahme_seminartermin", :name => "teilnahme[seminartermin]")
      form.should have_selector("input#teilnahme_benutzer", :name => "teilnahme[benutzer]")
    end
  end
end
