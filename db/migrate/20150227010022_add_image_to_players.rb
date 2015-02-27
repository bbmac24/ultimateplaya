class AddImageToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :players_image, :string
  end
end
