class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.references :book
      t.text :memo

      t.timestamps
    end
    add_index :memos, :book_id
  end
end
