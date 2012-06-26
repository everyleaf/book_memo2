# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Books" do
  describe "GET /books" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get books_path
      response.status.should be(200)
    end
  end

  describe "POST /books" do
    it "creates a book" do
      post_via_redirect books_path, 
 :book=>{:title=>"The road to the future",
         :memos=>[{:memo=>"aaa"},{:memo=>"bbb"}],
         :purchased_on(1i)=>"2012",
         :purchased_on(2i)=>"6",
         :purchased_on(3i)=>"13"
        }
      response.body.should include("mow lawn")
    end
  end



  describe '/books/:id/edit' do
    let!(:book){ FactoryGirl.create :book }
    subject { page }

    before { visit "/books/#{book.id}/edit" }
    it "タイトルが設定されていること" do
      find("#book_title").value.should == book.title
    end

    context "with update" do
      let(:update_title){ 'update book title!' }

      before do
        fill_in "book[title]", with: update_title
        click_on 'Update Book'
      end

      it "ページが遷移されていること" do
        current_path.should == book_path(book)
      end

      it "タイトルが更新されていること" do
        should have_content book.reload.title
        book.reload.title.should == update_title
      end
    end
  end
end
