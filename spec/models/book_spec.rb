require 'spec_helper'

describe Book do
  
  before do
      @book=Book.new
    end

    subject { @book}

    it { should respond_to(:author) }
    it { should respond_to(:purchase_date) }
    it { should respond_to(:title) }
    
    describe "When author field is blank" do
      before { @book.author = "" }
      it { should_not be_valid }
    end
    
    describe "When title field is blank" do
      before { @book.title = "" }
      it { should_not be_valid }
    end
    
    describe 'the book title' do
      let(:book){ FactoryGirl.build :book }
      before { book.save }
      it "should be as indicated" do
        book.title.should include "test"
      end
  end
  
end