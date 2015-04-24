class AddProjectBoolColumnToAlbumTable < ActiveRecord::Migration
  def change
    add_column :albums, :project, :bool
  end
end
