class CreateDegrees < ActiveRecord::Migration
  def change
    create_table :degrees do |t|
      t.references :field, index: true, foreign_key: true
      t.integer :year, limit: 4
      t.string :level
      t.string :sex, limit: 1
      t.integer :count

      t.timestamps null: false
    end
    add_index :degrees, :year
    add_index :degrees, :level
    add_index :degrees, :sex
  end
end
