class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.text :name
      t.text :content
      t.date :comment_date
      t.references :book

      t.timestamps
    end
    add_index :memos, :book_id
  end
end
