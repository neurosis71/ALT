class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|

      t.string :description_fr
      t.string :description_en
      t.timestamps null: false
    end
  end
end
