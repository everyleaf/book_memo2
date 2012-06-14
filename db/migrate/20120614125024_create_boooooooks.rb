class CreateBoooooooks < ActiveRecord::Migration
  def change
    create_table :boooooooks do |t|
      t.text :desc
      t.text :memo
      t.date :published

      t.timestamps
    end
  end
end
