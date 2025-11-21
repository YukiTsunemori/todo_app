class AddColumnDeadlineAtToTask < ActiveRecord::Migration[8.0]
  def change
    add_column :tasks, :deadline_at, :date
  end
end
