class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.string :group
      t.string :name
      t.string :email
      t.string :number
      t.string :accept

      t.timestamps null: false
    end
  end
end
