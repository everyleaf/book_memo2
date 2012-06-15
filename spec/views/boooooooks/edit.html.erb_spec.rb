require 'spec_helper'

describe "boooooooks/edit" do
  before(:each) do
    @boooooook = assign(:boooooook, stub_model(Boooooook,
      :desc => "MyText",
      :memo => "MyText"
    ))
  end

  it "renders the edit boooooook form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boooooooks_path(@boooooook), :method => "post" do
      assert_select "textarea#boooooook_desc", :name => "boooooook[desc]"
      assert_select "textarea#boooooook_memo", :name => "boooooook[memo]"
    end
  end
end
