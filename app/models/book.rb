# encoding: UTF-8
class Book < ActiveRecord::Base
  has_many :memos 
  attr_accessible :memo, :purchased_on, :title
  validates :title, :presence => true


end
