# coding:utf-8
require 'spec_helper'

describe Memo do
  describe 'validation' do
    describe 'content' do
      subject { Memo.new.valid? }
      it '未入力の場合はエラー' do
        should be_false
      end
    end
  end

describe "#new" do
    let(:memo){ FactoryGirl.build :memo }
    it "takes content and book_id and returns a Memo object" do
        @memo.should be_an_instance_of Memo
    end
end

describe "#content" do
	let(:memo){ FactoryGirl.build :memo }
    it "returns the correct content" do
        @memo.content.should eql "this is memo"
    end
end
end
