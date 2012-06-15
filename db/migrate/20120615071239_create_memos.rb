class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.integer :book_id
      t.string :value

      t.timestamps
    end
  end
end
