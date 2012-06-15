require 'spec_helper'

describe "memos/new" do
  before(:each) do
    assign(:memo, stub_model(Memo,
      :memo => "MyText",
      :book_id => "MyString"
    ).as_new_record)
  end

  it "renders new memo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => memos_path, :method => "post" do
      assert_select "textarea#memo_memo", :name => "memo[memo]"
      assert_select "input#memo_book_id", :name => "memo[book_id]"
    end
  end
end
