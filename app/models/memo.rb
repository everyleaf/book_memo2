class Memo < ActiveRecord::Base
  belongs_to :book
  attr_accessible :body

  validates :body, :presence => true, :length => { :maximum => 100 } 

end
