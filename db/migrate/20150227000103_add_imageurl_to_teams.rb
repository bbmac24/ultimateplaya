class AddImageurlToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :image_url, :string
  end
end
