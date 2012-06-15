# encoding: UTF-8
class Book < ActiveRecord::Base
  has_many :memos
  attr_accessible :memo, :purchased_on, :title
  validates :title, :presence => true

#  before_create :total_books_count

#  def total_books_count
#    self.memo += "【 累計冊数#{Book.count + 1} 】"
#  end
end
