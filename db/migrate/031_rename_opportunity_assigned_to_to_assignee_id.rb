class RenameOpportunityAssignedToToAssigneeId < ActiveRecord::Migration
    def self.up
      rename_column :opportunities, :assigned_to, :assignee_id
    end

    def self.down
      rename_column :opportunities, :assignee_id, :assigned_to
    end
  end
