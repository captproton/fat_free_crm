class ChangeAssignedToToAssigneeId < ActiveRecord::Migration
  def self.up
    rename_column :accounts, :assigned_to, :assignee_id
  end

  def self.down
    rename_column :accounts, :assignee_id, :assigned_to
  end
end
