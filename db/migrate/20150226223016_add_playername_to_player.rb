class AddPlayernameToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :player_name, :string
  end
end
