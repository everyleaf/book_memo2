require 'spec_helper'

describe "books/edit" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :title => "test Title",
      :author => "test author"
    ))
  end

  it "renders the edit book form" do
    render

      assert_select "form", :action => books_path(@book), :method => "post" do
      assert_select "input#book_title", :name => "book[title]"
      assert_select "input#book_author", :name => "book[author]"
    end
  end
end
