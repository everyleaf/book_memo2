require 'spec_helper'

describe "boooooooks/new" do
  before(:each) do
    assign(:boooooook, stub_model(Boooooook,
      :desc => "MyText",
      :memo => "MyText"
    ).as_new_record)
  end

  it "renders new boooooook form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boooooooks_path, :method => "post" do
      assert_select "textarea#boooooook_desc", :name => "boooooook[desc]"
      assert_select "textarea#boooooook_memo", :name => "boooooook[memo]"
    end
  end
end
