# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Boooooooks" do
  describe "GET /boooooooks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get boooooooks_index_url
      response.status.should be(200)
    end
  end

  describe 'POST /boooooooks' do
    context "with create" do
      describe 'success' do
        let(:update_desc){ 'upd desc' }
        let(:update_memo){ 'upd memo' }

        before do
          visit boooooooks_new_url
          fill_in "boooooook[desc]", with: update_desc
          fill_in "boooooook[memo]", with: update_memo
          select "2012", :from =>"boooooook[published(1i)]"
          select "June", :from =>"boooooook[published(2i)]"
          select "15", :from =>"boooooook[published(3i)]"
          click_on 'Create Boooooook'
        end

        it "ページが遷移されていること" do
          page.should have_content("Listing boooooooks")
        end
      end
    
      describe 'failed' do
        let(:update_desc){ '' }
        let(:update_memo){ '' }

        before do
          visit boooooooks_new_url
          fill_in "boooooook[desc]", with: update_desc
          fill_in "boooooook[memo]", with: update_memo
          select "2012", :from =>"boooooook[published(1i)]"
          select "June", :from =>"boooooook[published(2i)]"
          select "15", :from =>"boooooook[published(3i)]"
          click_on 'Create Boooooook'
        end

        it "エラーが表示されていること" do
          page.should have_content("2 errors prohibited this boooooook from being saved:")
        end
      end


    end


  end
end
