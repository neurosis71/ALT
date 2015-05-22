class AddPersoColumnToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :perso, :bool, :default => 0
  end
end
