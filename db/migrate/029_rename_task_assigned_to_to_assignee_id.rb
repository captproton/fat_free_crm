class RenameTaskAssignedToToAssigneeId < ActiveRecord::Migration
  def self.up
    rename_column :tasks, :assigned_to, :assignee_id
  end

  def self.down
    rename_column :tasks, :assignee_id, :assigned_to
  end
end
