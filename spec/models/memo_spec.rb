# coding:utf-8
require 'spec_helper'

describe Memo do
  describe "validation" do
    subject { Memo.new.valid? }
    it "未入力の場合はエラー" do
      should be_false
    end
  end
  
  describe "memo#body" do
    context "valid" do
      let(:memo){ FactoryGirl.build :memo, :body => "a"*100 }
      subject { memo.valid? }
      it "本文が100文字以内なら大丈夫" do
        should be_true
      end
    end
    
    context "invalid" do
      let(:memo){ FactoryGirl.build :memo, :body => "a"*101 }
      subject { memo.valid? }
      it "本文が100文字越えなのはダメ" do
        should be_false
      end
    end
  end
end
