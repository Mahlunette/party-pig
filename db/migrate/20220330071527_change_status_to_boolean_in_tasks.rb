class ChangeStatusToBooleanInTasks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :status, :string
    add_column :tasks, :completed, :boolean, default: false
  end
end
