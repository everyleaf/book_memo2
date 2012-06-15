class Boooooook < ActiveRecord::Base
  attr_accessible :desc, :memo, :published

  
  validates :desc, :presence => true, :length => {:maximum => 100}
  validates :memo, :presence => true, :length => {:maximum => 100}

end
