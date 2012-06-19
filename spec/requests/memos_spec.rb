# -*- coding: utf-8 -*-
require 'spec_helper'

describe "/books/:id/memos/new" do

  describe '/books/:id/memos/new' do
    let!(:book){ FactoryGirl.create :book }
    subject { page }

    before { visit "/books/#{book.id}" }
    it "タイトルが設定されていること" do
      find("#book_title").value.should == book.title
    end

    context "with update" do
      let(:insert_memo){ 'insert memo!' }

      before do
        fill_in "memo[body]", with: create_body
        click_on 'Create Memo'
      end

      it "ページが遷移されていること" do
        current_path.should == book_memo_path(book)
      end

      it "メモが追加されていること" do
        should have_content book.memo.reload.body
        book.memo.reload.body.should == create_body
      end
    end
  end
end
