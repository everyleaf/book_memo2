# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Memos" do
  describe "PUT /memos" do
    let!(:book){ FactoryGirl.create :book }
    subject { page }
    
    let(:memo_body) { "memo body" }
    
    before do
      visit "/books/#{book.id}"
      fill_in "memo[body]", with: memo_body
      click_on "Create Memo"
    end
    
    it "ページ遷移先はBooksController#showである" do
      current_path.should == book_path(book)
    end
    
    it "メモが追加されている" do
      should have_content(memo_body)
    end
  end
  
  describe "DELETE /memos/:id" do
    let!(:book) { FactoryGirl.create :book }
    let(:memo_body) { "memo body" }
    let!(:memo) { book.memos.create(:body => memo_body) }
    subject { page }
    
    before do
      visit "/books/#{book.id}"
      find("#memo-#{memo.id} a[data-method=\"delete\"]").click
    end
    
    it "ページ遷移先はBooksController#showである" do
      current_path.should == book_path(book)
    end
    
    it "メモが消えている" do
      should_not have_content(memo_body)
    end
  end
end

