require 'spec_helper'

describe "books/:book_id/memos" do
  
   before(:each) do
     @book=assign(:book, stub_model(Book,
      :title => "test Title",
      :author => "test author",
      :book_id => "1"
      ))
      assign(:memos, [
        stub_model(Memo,
          :name => "test name",
          :content => "test content"
        ),
        stub_model(Memo,
          :name => "test name",
          :content => "test content"
        )
      ])
    end

  it "renders index memo" do
    render :template => "memos/_memo", :layout => "layouts/application"
    
  end

end
