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
      let(:update_desc){ 'upd desc' }
      let(:update_memo){ 'upd memo' }

      before do
        visit boooooooks_new_url
        fill_in "boooooook[desc]", with: update_desc
        fill_in "boooooook[memo]", with: update_memo
        click_on 'Create Boooooook'
      end

      it "ページが遷移されていること" do
        current_path.should == boooooooks_index_url
      end
    
    end


  end
end
