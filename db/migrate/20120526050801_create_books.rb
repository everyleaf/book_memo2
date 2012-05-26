class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :memo
      t.date :purchased_on

      t.timestamps
    end
  end
end
