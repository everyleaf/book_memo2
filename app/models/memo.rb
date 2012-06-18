class Memo < ActiveRecord::Base
  attr_accessible :book_id, :body
  validates_length_of :body, :maximum => 100
end