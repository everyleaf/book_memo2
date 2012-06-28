class Memo < ActiveRecord::Base
  belongs_to :book
  attr_accessible :body
  validates_length_of :body, :maximum => 100
end
