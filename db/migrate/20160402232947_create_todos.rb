class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.boolean :check
      t.integer :priority
      t.datetime :created_at
      t.datetime :modified_at
      t.datetime :due_at
      t.string :notes
      t.string :link
      t.string :category

      t.timestamps null: false
    end
  end
end
