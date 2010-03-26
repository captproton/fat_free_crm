class RenameCampaignAssignedToToAssigneeId < ActiveRecord::Migration
  def self.up
    rename_column :campaigns, :assigned_to, :assignee_id
  end

  def self.down
    rename_column :campaigns, :assignee_id, :assigned_to
  end
end
