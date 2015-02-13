class CreateCons < ActiveRecord::Migration
  def change
    create_table :cons do |t|
      t.string :content
      t.references :app, index: true

      t.timestamps null: false
    end
    add_foreign_key :cons, :apps
  end
end
