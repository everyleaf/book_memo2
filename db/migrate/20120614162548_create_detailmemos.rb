class CreateDetailmemos < ActiveRecord::Migration
  def change
    create_table :detailmemos do |t|
      t.integer :book_id
      t.text :memo

      t.timestamps
    end
  end
end
