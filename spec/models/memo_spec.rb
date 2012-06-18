require 'spec_helper'

describe Memo do
  describe "validate" do
    context "in limit" do
      text = "a" * 100
      subject { Memo.new(:text => text).valid? }
      it { should be_true }
    end
    context "limit over" do
      text = "a" * (100+1)
      subject { Memo.new(:text => text).valid? }
      it { should be_false }
    end
  end
end
