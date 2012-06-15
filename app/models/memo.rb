class Memo < ActiveRecord::Base
  belongs_to :book
  attr_accessible :memo
end
