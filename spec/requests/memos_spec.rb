# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Memos" do
  
  describe "GET /books/:book_id/memos" do
    let!(:book){ FactoryGirl.create :book }
    subject { page }
    
    it "displays memos" do
      get "/books/#{book.id}/memos"
      response.status.should be(200)
    end
    
    before { visit "/books/#{book.id}/memos/new" }
    
    context "create new memo" do
      
      let(:test_name1){ 'name1' }
      let(:test_content1){ 'test content 1' }

      before do
        fill_in "memo[name]", with: :test_name1
        fill_in "memo[content]", with: :test_content1
        click_on 'Create Memo'
      end
      
      it "redirects to memos index page " do
        current_path.should == book_memos_path(book)
      end
      
      let(:test_name2){ 'name2' }
      let(:test_content2){ 'test content 2' }

      before do
        fill_in "memo[name]", with: :test_name2
        fill_in "memo[content]", with: :test_content2
        click_on 'Create Memo'
      end
      
      it "redirects to memos index page " do
        current_path.should == book_memos_path(book)
      end
      
      
      
    end
    
  end

  
end