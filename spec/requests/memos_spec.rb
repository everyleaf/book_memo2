# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Memos" do
  describe "GET /memos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get memos_path
      #response.status.should be(200)
      let!(:book){ FactoryGirl.create :book }
      subject { page }

      visit "/memos/new"

      context "with adding" do
	      let!(:orgcount){ book.memos.length }

	      before do
	        fill_in "memo[content]", with: "dummydummy"
	  		click_on 'Create Memo'
	      end

		  it "ページが遷移されていること" do
		      current_path.should == book_path(book)
		  end

		  it "メモが追加されていること" do
		     should have_content book.memos.length
		     book.memos.length.should == (orgcount + 1)
		  end
	  end
    end
  end
end
