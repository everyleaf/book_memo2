class Memo < ActiveRecord::Base
  belongs_to :book
  attr_accessible :body, :book_id
end
