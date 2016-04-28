class CreateSeconds < ActiveRecord::Migration
  def change
    create_table :seconds do |t|
      t.text :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
