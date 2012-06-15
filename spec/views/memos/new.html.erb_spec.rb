require 'spec_helper'

describe "memos/new" do
  before(:each) do
    assign(:memo, stub_model(Memo,
      :book => nil,
      :memo => "MyText"
    ).as_new_record)
  end

  it "renders new memo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => memos_path, :method => "post" do
      assert_select "input#memo_book", :name => "memo[book]"
      assert_select "textarea#memo_memo", :name => "memo[memo]"
    end
  end
end
