class AddNameToGameReservation < ActiveRecord::Migration
  def change
    add_column :game_reservations, :name, :string
  end
end
