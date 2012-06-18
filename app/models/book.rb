# encoding: UTF-8
class Book < ActiveRecord::Base
  attr_accessible :memo, :purchased_on, :title
  validates :title, :presence => true
  has_many :memos, :dependent => :destroy

  before_create :total_books_count

  def total_books_count
    self.memo += "【 累計冊数#{Book.count + 1} 】"
  end
end
