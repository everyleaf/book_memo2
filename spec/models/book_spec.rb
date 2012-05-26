# coding:utf-8
require 'spec_helper'

describe Book do
  it 'タイトルが未入力の場合はエラー' do
    book = Book.new
    book.valid?.should be_false
  end
end
