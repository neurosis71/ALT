class CreateCursus < ActiveRecord::Migration
  def change
    create_table :cursus do |t|

      t.date :date, null: false
      t.string :school, null: false
      t.string :location_fr, null: false
      t.string :location_en, null: false
      t.text :description_fr
      t.text :description_en
      t.timestamps null: false
    end
  end
end
