class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|

      t.string :name_fr
      t.string :name_en
      t.string :main_image
      t.text :description_fr
      t.text :description_en
      t.timestamps null: false
    end
  end
end
