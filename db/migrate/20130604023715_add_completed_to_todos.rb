class AddCompletedToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :complete, :string
  end
end
