require 'spec_helper'

describe "memos/index" do
  before(:each) do
    assign(:memos, [
      stub_model(Memo,
        :memo => "MyText",
        :book_id => "Book"
      ),
      stub_model(Memo,
        :memo => "MyText",
        :book_id => "Book"
      )
    ])
  end

  it "renders a list of memos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Book".to_s, :count => 2
  end
end
