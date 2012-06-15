require 'spec_helper'

describe Memo do
  context "character length is below 100." do
    body = "x" * 100
    subject { Memo.new(:body => body).valid? }
    it { should be_true }
  end
  
  context "character length is over 100." do
    body = "x" * (100 + 1)
    subject { Memo.new(:body => body).valid? }
    it { should be_false }
  end
end
