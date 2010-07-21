require 'spec_helper'

describe "seminartermine/show.html.erb" do
  before(:each) do
    @seminartermin = assign(:seminartermin, stub_model(Seminartermin,
      :raum => "Raum",
      :seminar => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Raum".to_s)
    rendered.should contain(nil.to_s)
  end
end
