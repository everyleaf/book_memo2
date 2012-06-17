# encoding: UTF-8
class Book < ActiveRecord::Base
  attr_accessible :memo_attributes, :purchased_on, :title,  :memo
  validates :title, :presence => true

  before_create :total_books_count

  has_many :memo, dependent: :destroy
  accepts_nested_attributes_for :memo

  def total_books_count
=begin
    self.memo.each do |m|
      m.value += "【 累計冊数#{Book.count + 1} 】"
    end
=end
  end
end
