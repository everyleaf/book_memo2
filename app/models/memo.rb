class Memo < ActiveRecord::Base
  attr_accessible :value

  belongs_to :book
end
