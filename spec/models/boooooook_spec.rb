# coding:utf-8
require 'spec_helper'

describe Boooooook do
  describe 'validation' do
    describe 'desc' do
      before do
        @bk = Boooooook.new
        @bk.memo = 'a' * 100
      end
      it '未入力の場合はエラー' do
        @bk.valid?.should be_false
      end
      it '文字数が100byte以上の場合はエラー' do
        @bk.desc = 'a' * 101
        @bk.valid?.should be_false
      end
    end
    describe 'memo' do
      before do
        @bk = Boooooook.new
        @bk.desc = 'a' * 100
      end
      it '未入力の場合はエラー' do
        @bk.valid?.should be_false
      end
      it '文字数が100byte以上の場合はエラー' do
        @bk.memo = 'a' * 101
        @bk.valid?.should be_false
      end
    end
  end


  describe '#total_books_count' do
    let(:boooooook){ FactoryGirl.build :boooooook }
    before do
        @bk = Boooooook.new
        @bk.desc = 'a' * 100
        @bk.memo = 'a' * 100
    end
    it "Boooooookを保存できること" do
        @bk.save.should be_true
    end
  end
end






