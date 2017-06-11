class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.text :content
      t.integer :user_id
      t.boolean :completed
      t.string :category
      t.string :priority

      t.timestamps
    end
    add_index :tasks, [:user_id, :created_at]
  end
end
