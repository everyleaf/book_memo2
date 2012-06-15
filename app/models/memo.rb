class Memo < ActiveRecord::Base
  belongs_to :book
  attr_accessible :body, :book_id

  validates :body, :length => { :maximum => 100 }
end
