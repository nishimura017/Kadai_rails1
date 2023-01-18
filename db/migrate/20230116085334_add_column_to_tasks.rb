class AddColumnToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :end_day, :date
    add_column :tasks, :all_day, :boolean
    remove_column :tasks, :end, :string
  end
end
