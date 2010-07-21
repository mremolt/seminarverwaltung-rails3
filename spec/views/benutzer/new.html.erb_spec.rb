require 'spec_helper'

describe "benutzer/new.html.erb" do
  before(:each) do
    assign(:benutzer, stub_model(Benutzer,
      :new_record? => true,
      :anrede => "MyString",
      :vorname => "MyString",
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new benutzer form" do
    render

    rendered.should have_selector("form", :action => benutzer_path, :method => "post") do |form|
      form.should have_selector("input#benutzer_anrede", :name => "benutzer[anrede]")
      form.should have_selector("input#benutzer_vorname", :name => "benutzer[vorname]")
      form.should have_selector("input#benutzer_name", :name => "benutzer[name]")
      form.should have_selector("input#benutzer_email", :name => "benutzer[email]")
    end
  end
end
