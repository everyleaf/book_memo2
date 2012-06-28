# coding:utf-8

require 'spec_helper'

describe Memo do
  let(:memo){FactoryGirl.build :memo}   
  before {memo.save}   
  describe 'validation' do  
    it "メモの長さは100を超えるとエラー" do   
      memo.body.size.should < 100   
    end
  end
end
