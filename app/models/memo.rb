class Memo < ActiveRecord::Base
  belongs_to :book
  attr_accessible :memo
  validates :memo, :presence => true
  validates_length_of :memo, :maximum => 100
end
