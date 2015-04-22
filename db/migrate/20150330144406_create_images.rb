class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|

      t.attachment :album_image
      t.references :album, null: false
      t.timestamps null: false
    end
  end
end
