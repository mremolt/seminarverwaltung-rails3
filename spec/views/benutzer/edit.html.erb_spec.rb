require 'spec_helper'

describe "benutzer/edit.html.erb" do
  before(:each) do
    @benutzer = assign(:benutzer, stub_model(Benutzer,
      :new_record? => false,
      :anrede => "MyString",
      :vorname => "MyString",
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit benutzer form" do
    render

    rendered.should have_selector("form", :action => benutzer_path(@benutzer), :method => "post") do |form|
      form.should have_selector("input#benutzer_anrede", :name => "benutzer[anrede]")
      form.should have_selector("input#benutzer_vorname", :name => "benutzer[vorname]")
      form.should have_selector("input#benutzer_name", :name => "benutzer[name]")
      form.should have_selector("input#benutzer_email", :name => "benutzer[email]")
    end
  end
end
