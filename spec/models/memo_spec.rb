# coding:utf-8
require 'spec_helper'

describe Memo do
  describe 'validation' do
   let(:memo){FactoryGirl.build :memo}
   before {memo.save}
   it "メモの長さは100を超えるとエラー" do
   memo.memo.size.should < 100

   end
   end
end
