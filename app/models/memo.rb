class Memo < ActiveRecord::Base
  attr_accessible :book_id, :body
  validates_length_of :body, :within => 1..100
end
