class AddPersoColumnToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :perso, :bool, :default => false
  end
end
