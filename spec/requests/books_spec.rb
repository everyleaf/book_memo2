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

  describe "/books/new",  :js => true do
    before do
      visit "/books/new"
      fill_in 'book[title]', with: "title1"
      click_on 'Add memo'
      click_on 'Add memo'
      fill_in 'book[memo_attributes][0][value]',  with: 'memo1'
      fill_in 'book[memo_attributes][1][value]',  with: 'memo2'

      click_on 'Create Book'
    end

    context "with 2 memos in book creation step" do
      let(:memos) { page.all(:xpath, '//ul/li') }
      it "2 Memos were attached to the new book" do
        memos.should have(2).items

      end
    end
  end
end
