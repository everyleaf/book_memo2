require 'spec_helper'

describe Memo do
  describe "validate the length of memo" do
    context "the length is 100 characters." do
      body = "m" * 100
      subject { Memo.new(:body => body).valid? }
      it { should be_true }
    end
  
    context "the length was longer than 100 characters." do
      body = "m" * 101
      subject { Memo.new(:body => body).valid? }
      it { should be_false }
    end
  end
end