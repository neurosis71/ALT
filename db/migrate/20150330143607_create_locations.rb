class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|

      t.string :name_fr, null: false
      t.string :name_en, null: false
      t.string :main_image
      t.text :description_fr
      t.text :description_en
      t.timestamps null: false
    end
  end
end
