class CreateFovorites < ActiveRecord::Migration[6.1]
  def change
    create_table :fovorites do |t|
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
