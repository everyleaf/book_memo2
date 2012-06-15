class Memo < ActiveRecord::Base
belongs_to :Book, :foreign_key => "book_id"
  attr_accessible :book_id, :memo
validates_length_of :memo, :maximum => 100


end

