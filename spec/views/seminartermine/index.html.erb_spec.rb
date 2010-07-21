require 'spec_helper'

describe "seminartermine/index.html.erb" do
  before(:each) do
    assign(:seminartermine, [
      stub_model(Seminartermin,
        :raum => "Raum",
        :seminar => nil
      ),
      stub_model(Seminartermin,
        :raum => "Raum",
        :seminar => nil
      )
    ].paginate(:page => 1, :per_page => 10))
  end

  it "renders a list of seminartermine" do
    render
    rendered.should have_selector("tr>td", :content => "Raum".to_s, :count => 2)
  end
end
