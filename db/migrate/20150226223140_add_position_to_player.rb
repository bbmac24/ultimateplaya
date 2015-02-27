class AddPositionToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :player_position, :string
  end
end
