class Memo < ActiveRecord::Base
  attr_accessible :value,:book_id

  belongs_to :book
end
