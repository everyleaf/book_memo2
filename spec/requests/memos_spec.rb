# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Memos" do
#  describe "GET /memos" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get memos_path
#      response.status.should be(200)
#    end
#  end

  describe '/books/:id/memos/' do
    let!(:book){ FactoryGirl.create :book }
    subject { page }

    before { visit "/books/#{book.id}" }

    2.times do |n|
      context "add memos #{n}" do
        let(:add_memo){ "add memos! #{n}" }

        before do
          fill_in "memo[memo]", with: add_memo
          click_on 'Create Memo'
        end

        it "current path is ok" do
          current_path.should == book_path(book)
        end

        it "added memo exists" do
          should have_content add_memo
        end
      end
    end
  end
end
