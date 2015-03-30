class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|

      t.string :description_fr, null: false
      t.string :description_en, null: false
      t.timestamps null: false
    end
  end
end
