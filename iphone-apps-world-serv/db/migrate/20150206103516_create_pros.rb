class CreatePros < ActiveRecord::Migration
  def change
    create_table :pros do |t|
      t.string :content
      t.references :app, index: true

      t.timestamps null: false
    end
    add_foreign_key :pros, :apps
  end
end
