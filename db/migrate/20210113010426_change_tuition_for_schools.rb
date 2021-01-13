class ChangeTuitionForSchools < ActiveRecord::Migration[6.0]
  def change
    remove_column :med_schools, :tuition
    remove_column :med_schools, :cost_of_attendance
    add_column :med_schools, :resident_first, :money
    add_column :med_schools, :resident_second, :money
    add_column :med_schools, :resident_third, :money
    add_column :med_schools, :resident_fourth, :money
    add_column :med_schools, :non_resident_first, :money
    add_column :med_schools, :non_resident_second, :money
    add_column :med_schools, :non_resident_third, :money
    add_column :med_schools, :non_resident_fourth, :money
  end
end
