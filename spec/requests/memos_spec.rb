# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Memos" do
  describe "/books/:id/memos/new" do
    let!(:book){ FactoryGirl.create :book }

    subject { page }

    2.times do |i|
      context "with create #{i}" do
        before { visit "/books/#{book.id}/memos/new" }
        let(:memo_body){ "memo body #{i}" }

        before do
          fill_in "memo[body]", with: memo_body
          click_on 'Create Memo'
        end

        it "should be book show page" do
          current_path.should == book_path(book)
        end

        it "has memo" do
          should have_content memo_body
        end
      end
    end
  end
end
