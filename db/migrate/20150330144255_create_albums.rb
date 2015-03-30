class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|

      t.string :name_fr
      t.string :name_en
      t.string :main_image
      t.text :description_fr
      t.text :description_en
      t.references :location, null: true
      t.timestamps null: false
    end
  end
end
