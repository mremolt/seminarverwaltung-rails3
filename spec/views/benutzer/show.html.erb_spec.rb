require 'spec_helper'

describe "benutzer/show.html.erb" do
  before(:each) do
    @benutzer = assign(:benutzer, stub_model(Benutzer,
      :anrede => "Anrede",
      :vorname => "Vorname",
      :name => "Name",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Anrede".to_s)
    rendered.should contain("Vorname".to_s)
    rendered.should contain("Name".to_s)
    rendered.should contain("Email".to_s)
  end
end
