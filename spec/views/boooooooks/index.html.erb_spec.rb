require 'spec_helper'

describe "boooooooks/index" do
  before(:each) do
    assign(:boooooooks, [
      stub_model(Boooooook,
        :desc => "MyText",
        :memo => "MyText"
      ),
      stub_model(Boooooook,
        :desc => "MyText",
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of boooooooks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
