class AlterTableName < ActiveRecord::Migration
  def change
  	 rename_table :jointmemberteams, :joint_member_teams
  end
end
