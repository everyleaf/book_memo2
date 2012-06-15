class RemoveMemoFromBooks < ActiveRecord::Migration
  def up
    remove_column :books, :memo
      end

  def down
    add_column :books, :memo, :text
  end
end
