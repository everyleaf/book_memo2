# coding:utf-8
require 'spec_helper'

describe Memo do
  describe 'validation' do
    describe 'body' do
      subject { Memo.new.valid? }
      it 'blank and more than 100 chars will error' do
        should be_false
      end
    end
  end
end

