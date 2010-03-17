class RenameUserPrivateToSubRosa < ActiveRecord::Migration
  def self.up
    rename_column :comments, :private, :sub_rosa
    rename_column :activities, :private, :sub_rosa
  end

  def self.down
    rename_column :comments, :sub_rosa, :private
    rename_column :activities, :sub_rosa, :private
  end
end
