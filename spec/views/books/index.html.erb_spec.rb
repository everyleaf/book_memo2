require 'spec_helper'

describe "books/index" do
  before(:each) do
    assign(:books, [
      stub_model(Book,
        :title => "Title",
        :memo => "MyText"
      ),
      stub_model(Book,
        :title => "Title",
        :memo => "MyText"
      )
    ])
  end


  # it "renders a list of books" do
    # render
    # # Run the generator again with the --webrat flag if you want to use webrat matchers
    # assert_select "tr>td", :text => "Title".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
  # end
end
