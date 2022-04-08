class ChangeSupportsToTasks < ActiveRecord::Migration[6.0]
  def change
    rename_table :supports, :tasks
  end
end
