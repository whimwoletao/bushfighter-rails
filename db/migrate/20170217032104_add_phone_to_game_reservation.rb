class AddPhoneToGameReservation < ActiveRecord::Migration
  def change
    add_column :game_reservations, :phone, :string
  end
end
