class CreateDegreesByFieldYearSexes < ActiveRecord::Migration
  def change
    create_table :degrees_by_field_year_sexes do |t|
      t.references :field, index: true, foreign_key: true
      t.integer :year, limit: 4
      t.string :level
      t.string :sex, limit: 1
      t.integer :count

      t.timestamps null: false
    end
    add_index :degrees_by_field_year_sexes, :year
    add_index :degrees_by_field_year_sexes, :level
    add_index :degrees_by_field_year_sexes, :sex
  end
end
