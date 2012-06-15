require 'spec_helper'

describe Detailmemo do
  pending "add some examples to (or delete) #{__FILE__}"
  context "under 100" do
    memo = "a" * 100
    subject { Detailmemo.new(:memo => memo).valid?}
    it { should be_true}
  end

  context "under 100" do
    memo = "a" * 101
    subject { Detailmemo.new(:memo => memo).valid?}
    it { should be_false}
  end
end
