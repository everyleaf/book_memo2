class Book < ActiveRecord::Base
  attr_accessible :memo, :purchased_on, :title
end
