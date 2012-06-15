require 'spec_helper'

describe "memos/edit" do
  before(:each) do
    @memo = assign(:memo, stub_model(Memo,
      :memo => "MyText",
      :book_id => "MyString"
    ))
  end

  it "renders the edit memo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => memos_path(@memo), :method => "post" do
      assert_select "textarea#memo_memo", :name => "memo[memo]"
      assert_select "input#memo_book_id", :name => "memo[book_id]"
    end
  end
end
