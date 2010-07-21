require 'spec_helper'

describe "benutzer/index.html.erb" do
  before(:each) do
    assign(:benutzer, [
      stub_model(Benutzer,
        :anrede => "Anrede",
        :vorname => "Vorname",
        :name => "Name",
        :email => "Email"
      ),
      stub_model(Benutzer,
        :anrede => "Anrede",
        :vorname => "Vorname",
        :name => "Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of benutzer" do
    render
    rendered.should have_selector("tr>td", :content => "Anrede".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Vorname".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Email".to_s, :count => 2)
  end
end
