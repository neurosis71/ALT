class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|

      t.text :about_fr
      t.text :about_en
      t.text :career_fr
      t.text :career_en
      t.text :interests_fr
      t.text :interests_en
      t.timestamps null: false
    end
  end
end
