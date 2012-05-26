class Book < ActiveRecord::Base
  attr_accessible :memo, :purchased_on, :title
  validates :title, :presence => true
end
