class Memo < ActiveRecord::Base
  attr_accessible :book_id, :text
  validates_length_of :text , :maximum => 100
end
