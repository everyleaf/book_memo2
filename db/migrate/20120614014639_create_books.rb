class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :purchase_date

      t.timestamps
    end
  end
end
