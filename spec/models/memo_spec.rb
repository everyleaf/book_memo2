require 'spec_helper'

describe Memo do
  
    before do
      @memo=Memo.new
    end

    subject { @memo}

    it { should respond_to(:name) }
    it { should respond_to(:content) }
    it { should respond_to(:comment_date) }
    
    describe "When author field is blank" do
      before { @memo.name = "" }
      it { should_not be_valid }
    end
    
    describe "When title field is blank" do
      before { @memo.content = "" }
      it { should_not be_valid }
    end
    
    describe "When memo is too long" do
      before { @memo.content = "a"*150 }
      it { should_not be_valid }
    end
    
    describe 'thecomment content' do
        let(:memo){ FactoryGirl.build :memo }
        before { memo.save }
        it "should be as indicated" do
          memo.content.should include "this is comment"
        end
    end
    
   
  
end