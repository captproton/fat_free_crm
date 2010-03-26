class RenameLeadAssignedToToAssigneeId < ActiveRecord::Migration
    def self.up
      rename_column :leads, :assigned_to, :assignee_id
    end

    def self.down
      rename_column :leads, :assignee_id, :assigned_to
    end
  end
