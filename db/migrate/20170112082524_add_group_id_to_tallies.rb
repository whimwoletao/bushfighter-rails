class AddGroupIdToTallies < ActiveRecord::Migration
  def change
    add_column :tallies, :group_id, :integer
  end
end
