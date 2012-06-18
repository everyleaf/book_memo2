class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.integer :book_id, :null =>false
      t.text :body

      t.timestamps
    end
  end
end