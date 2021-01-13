class CreateMedSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :med_schools do |t|
      t.text :name
      t.text :location
      t.text :degree_type
      t.integer :students
      t.text :website
      t.text :mission_statement
      t.text :school_type
      t.money :tuition
      t.money :cost_of_attendance

      t.timestamps
    end
  end
end
