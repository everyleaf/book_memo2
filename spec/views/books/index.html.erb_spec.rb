require 'spec_helper'

describe "books/index" do
  before(:each) do
    assign(:books, [
      stub_model(Book,
        :title => "test Title",
        :author => "test author"
      ),
      stub_model(Book,
        :title => "test Title",
        :author => "test author"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "test Title".to_s, :count => 2
    assert_select "tr>td", :text => "test author".to_s, :count => 2
  end
end
