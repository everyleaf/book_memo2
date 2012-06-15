class Detailmemo < ActiveRecord::Base
  validates :memo, :length => { :maximum => 100}
  attr_accessible :book_id, :memo
end
