class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :name
      t.references :field, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :fields, :name
  end
end
