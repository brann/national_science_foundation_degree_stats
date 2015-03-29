class CreateDegreesByFieldYears < ActiveRecord::Migration
  def change
    create_table :degrees_by_field_years do |t|
      t.references :field, index: true, foreign_key: true
      t.integer :year, limit: 4
      t.integer :bachelor_all
      t.integer :bachelor_male
      t.integer :bachelor_female
      t.integer :master_all
      t.integer :master_male
      t.integer :master_female
      t.integer :doctorate_all
      t.integer :doctorate_male
      t.integer :doctorate_female

      t.timestamps null: false
    end
    add_index :degrees_by_field_years, :year
  end
end
