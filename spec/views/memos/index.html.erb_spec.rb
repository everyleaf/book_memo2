require 'spec_helper'

describe "memos/index" do
  before(:each) do
    assign(:memos, [
      stub_model(Memo,
        :value => "Value"
      ),
      stub_model(Memo,
        :value => "Value"
      )
    ])
  end

  it "renders a list of memos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Value".to_s, :count => 2
  end
end
