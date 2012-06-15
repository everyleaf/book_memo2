class Memo < ActiveRecord::Base
  attr_accessible :body, :book_id
  validates :body, :presence => true, :length => { :maximum => 100 }
end
