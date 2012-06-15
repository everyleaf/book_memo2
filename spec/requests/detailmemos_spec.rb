# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Detailmemos" do

  describe '/books/:book_id/' do
    let!(:book){ FactoryGirl.create :book }
    let!(:detailmemo){ FactoryGirl.create :detailmemo }
    subject { page }

    before { visit "/books/#{book.id}" }
    it "show Add Memo link" do
      page.should have_css("#add_memo",:text => "Add Memo") 
    end

    context "write memo1" do
      let(:memo_data){ 'memo test 1' }

      before do
        click_on 'Add Memo'
        fill_in "detailmemo_memo", with: memo_data
        click_on 'Create Detailmemo'
      end

      it "page is moved" do
        current_path.should == books_path
      end

      it "memo1 is exist" do
        visit "/books/#{book.id}"
        page.should have_content(memo_data)
      end
    end
    context "write memo2" do
      let(:memo_data){ 'memo test 2' }

      before do
        click_on 'Add Memo'
        fill_in "detailmemo_memo", with: memo_data
        click_on 'Create Detailmemo'
      end

      it "page is moved" do
        current_path.should == books_path
      end

      it "memo2 is exist" do
        visit "/books/#{book.id}"
        page.should have_content(memo_data)
      end
    end
  end
end
