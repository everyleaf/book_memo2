require 'spec_helper'

describe "boooooooks/show" do
  before(:each) do
    @boooooook = assign(:boooooook, stub_model(Boooooook,
      :desc => "MyText",
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
