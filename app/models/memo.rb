class Memo < ActiveRecord::Base
  belongs_to :book
  attr_accessible :comment_date, :content, :name
  
  validates :name, :presence => true
  validates :content, :presence => true,  :length => { :maximum => 100 }
end
