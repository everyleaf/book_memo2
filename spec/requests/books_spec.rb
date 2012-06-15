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

  describe '/books/:id/memos/new' do
    let!(:book){FactoryGirl.create :book }
    subject {page }

    before { visit "/books/#{book.id}/memos/new" }
    let(:memo_body){["hoge1","hoge2"]}

    context "add 1memo" do
      before do
         fill_in "memo[body]", with: memo_body[0]
         click_on "Create Memo"
      end

      it "resist check" do
         should have_content(memo_body[0])
      end
    end

    context "add 2memo" do
      before do
         fill_in "memo[body]", with: memo_body[1]
         click_on "Create Memo"
      end

      it "resist check" do
         should have_content(memo_body[1])
      end
    end
  end
end
