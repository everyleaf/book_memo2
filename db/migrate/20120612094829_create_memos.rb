class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.string :body, :limit => 100
      t.integer :book_id, :null => false

      t.timestamps
    end
   
    add_index :memos, :book_id
  end
end
