class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.attachment :image
      t.references :idApp, index: true

      t.timestamps null: false
    end
    add_foreign_key :images, :idApps
  end
end
