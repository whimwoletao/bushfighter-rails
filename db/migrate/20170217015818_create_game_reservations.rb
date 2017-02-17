class CreateGameReservations < ActiveRecord::Migration
  def change
    create_table :game_reservations do |t|
      t.string :type
      t.string :package
      t.string :date
      t.string :time

      t.timestamps null: false
    end
  end
end
