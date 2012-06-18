# coding:utf-8
require 'spec_helper'

describe Memo do
    context "within 100 moji" do
       body = "a"*100
       subject {Memo.new(:body => body).valid?} 
       it { should be_true }
    end

    context "more than 100 moji" do
       body = "a"*101
       subject {Memo.new(:body => body).valid?}                    
       it { should be_false }
    end
end
