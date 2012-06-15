class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :id
      t.string :title
      t.date :purchased_on

      t.timestamps
    end
  end
end
