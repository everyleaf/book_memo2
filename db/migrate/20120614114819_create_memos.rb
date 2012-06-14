class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|

      t.integer :book_id, :null =>false, :options => 
        "CONSTRAINT fk_memo_books REFERENCES books(id)"
      t.text :content
      
      t.timestamps
    end
  end
end
