# coding:utf-8
require 'spec_helper'

describe Book do
  describe 'validation' do
    describe 'title' do
      subject { Book.new.valid? }
      it '未入力の場合はエラー' do
        should be_false
      end
    end
  end

#  describe '#total_books_count' do
#    let(:book){ FactoryGirl.build :book }
#    before { book.save }
#    it "memoに累計冊数が表示されること" do
#      book.memo.should include "【 累計冊数#{Book.count} 】"
#    end
#  end
end
