require 'spec_helper'

describe "teilnahmen/index.html.erb" do
  before(:each) do
    assign(:teilnahmen, [
      stub_model(Teilnahme,
        :seminartermin => nil,
        :benutzer => nil
      ),
      stub_model(Teilnahme,
        :seminartermin => nil,
        :benutzer => nil
      )
    ])
  end

  it "renders a list of teilnahmen" do
    render
    rendered.should have_selector("tr>td", :content => nil.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => nil.to_s, :count => 2)
  end
end
