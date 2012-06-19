class Memo < ActiveRecord::Base
  attr_accessible :content

  validates_length_of :content, :maximum => 100, :allow_blank => false, :message => "Memo must not be empty and must contain less than 100 characters"

  belongs_to :book
end
