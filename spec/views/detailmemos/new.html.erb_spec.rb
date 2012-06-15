require 'spec_helper'

describe "detailmemos/new" do
  before(:each) do
    assign(:detailmemo, stub_model(Detailmemo,
      :book_id => 1,
      :memo => "MyText"
    ).as_new_record)
  end

  it "renders new detailmemo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => detailmemos_path, :method => "post" do
      assert_select "input#detailmemo_book_id", :name => "detailmemo[book_id]"
      assert_select "textarea#detailmemo_memo", :name => "detailmemo[memo]"
    end
  end
end
