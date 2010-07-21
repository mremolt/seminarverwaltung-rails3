require 'spec_helper'

describe "teilnahmen/show.html.erb" do
  before(:each) do
    @teilnahme = assign(:teilnahme, stub_model(Teilnahme,
      :seminartermin => nil,
      :benutzer => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain(nil.to_s)
    rendered.should contain(nil.to_s)
  end
end
