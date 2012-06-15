class Book < ActiveRecord::Base
  attr_accessible :author, :purchase_date, :title
  
  validates :title, :presence => true
  
  validates :author, :presence => true
  
  has_many :memos, :dependent => :destroy
end
