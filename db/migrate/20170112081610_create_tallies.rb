class CreateTallies < ActiveRecord::Migration
  def change
    create_table :tallies do |t|
      t.string :name
      t.integer :head
      t.integer :body
      t.integer :total
      t.string :kills

      t.timestamps null: false
    end
  end
end
