require 'spec_helper'

describe Memo do
  #pending "add some examples to (or delete) #{__FILE__}"
  
  describe "validation" do
    describe "body" do
      context "is required" do
        subject { Memo.new.valid? }
        it { should be_false }
      end

      context "is NOT over 100 char length" do
        body = "a" * 100
        subject { Memo.new(:body => body).valid? }
        it { should be_true }
      end
      context "is over 100 char length" do
        body = "a" * 101
        subject { Memo.new(:body => body).valid? }
        it { should be_false }
      end
    end
  end
end
