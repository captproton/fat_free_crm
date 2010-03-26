class RenameContactAssignedToToAssigneeId < ActiveRecord::Migration
    def self.up
      rename_column :contacts, :assigned_to, :assignee_id
    end

    def self.down
      rename_column :contacts, :assignee_id, :assigned_to
    end
  end
