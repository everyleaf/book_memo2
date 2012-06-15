require 'spec_helper'

describe "books/new" do
  before(:each) do
    assign(:book, stub_model(Book,
        :title => "test Title",
        :author => "test author"
    ).as_new_record)
  end

  it "renders new book form" do
    render

    assert_select "form", :action => books_path, :method => "post" do
      assert_select "input#book_title", :name => "book[title]"
      assert_select "input#book_author", :name => "book[memo]"
    end
  end
end