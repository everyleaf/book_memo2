class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.text :memo
      t.string :book_id

      t.timestamps
    end
  end
end
