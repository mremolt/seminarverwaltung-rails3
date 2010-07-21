require 'spec_helper'

describe "teilnahmen/edit.html.erb" do
  before(:each) do
    @teilnahme = assign(:teilnahme, stub_model(Teilnahme,
      :new_record? => false,
      :seminartermin => nil,
      :benutzer => nil
    ))
  end

  it "renders the edit teilnahme form" do
    render

    rendered.should have_selector("form", :action => teilnahme_path(@teilnahme), :method => "post") do |form|
      form.should have_selector("input#teilnahme_seminartermin", :name => "teilnahme[seminartermin]")
      form.should have_selector("input#teilnahme_benutzer", :name => "teilnahme[benutzer]")
    end
  end
end
