class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.references :category, index: true
      t.text :body
      t.integer :up_votes

      t.timestamps
    end
  end
end
