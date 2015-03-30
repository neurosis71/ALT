class CreateCursus < ActiveRecord::Migration
  def change
    create_table :cursus do |t|

      t.date :date
      t.string :school
      t.string :location_fr
      t.string :location_en
      t.text :description_fr
      t.text :description_en
      t.timestamps null: false
    end
  end
end
