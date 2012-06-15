class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.integer :book_id
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :memos
  end
end
