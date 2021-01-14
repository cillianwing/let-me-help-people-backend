class AddTuitionToMedSchools < ActiveRecord::Migration[6.0]
  def change
    add_column :med_schools, :resident_first, :integer 
    add_column :med_schools, :resident_second, :integer 
    add_column :med_schools, :resident_third, :integer 
    add_column :med_schools, :resident_fourth, :integer 
    add_column :med_schools, :non_resident_first, :integer 
    add_column :med_schools, :non_resident_second, :integer 
    add_column :med_schools, :non_resident_third, :integer 
    add_column :med_schools, :non_resident_fourth, :integer 
  end
end
