require 'spec_helper'

describe "Memos" do
=begin
  describe "GET /memos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get memos_path
      response.status.should be(200)
    end
  end
=end

  describe '/books/:book_id/memos' do
    let!(:memo){ FactoryGirl.create :memo }
    subject {page}

    before {visit "/books/#{memo.book.id}"}

    context 'create body' do
      let(:create_body) {'create by request spec'}
      before do
        fill_in 'memo[body]', with: create_body
        click_on 'Create Memo'
      end

      it 'page not move' do
        current_path.should == book_path(memo.book)
      end

      it 'success to create memo' do
        should have_content memo.reload.body
        memo.reload.body.should == create_body
      end

    end


  end


end
