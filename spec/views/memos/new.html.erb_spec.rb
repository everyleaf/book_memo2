require 'spec_helper'

describe "/books/:book_id/memos/new" do
  before(:each) do
     @book = assign(:book, stub_model(Book,
      :title => "test Title",
      :author => "test author",
      :book_id => "1"
    ))
    assign(:memo, stub_model(Memo,
        :name => "test name",
        :content => "test content"
    ).as_new_record)
  end

  it "renders new memo form" do
    render :template => "memos/_form", :layout => "layouts/application"
    
      assert_select "form", :action => book_memos_path(@book), :method => "post" do
      assert_select "input#memo_name", :name => "memo[name]"
      assert_select "textarea#memo_content", :name => "memo[content]"
    end  
  end
end