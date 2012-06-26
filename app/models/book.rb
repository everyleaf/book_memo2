# encoding: UTF-8
class Book < ActiveRecord::Base

 has_many :memos, :dependent => :destroy
 accepts_nested_attributes_for :memos
  attr_accessible  :purchased_on, :title, :memos, :id
  validates :title, :presence => true


  
  def new_memo_attributes=(memo_attributes)
     memo_attributes.each do |attributes|
     memos.build(attributes)
    end
  end


end
