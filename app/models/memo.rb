class Memo < ActiveRecord::Base
  attr_protected :book_id
  validates :body,
    :presence => true,
    :length => { :maximum => 100 }
  
  belongs_to :book
end
