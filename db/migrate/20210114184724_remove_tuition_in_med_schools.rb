class RemoveTuitionInMedSchools < ActiveRecord::Migration[6.0]
  def change
    remove_column :med_schools, :resident_first, :integer 
    remove_column :med_schools, :resident_second, :integer 
    remove_column :med_schools, :resident_third, :integer 
    remove_column :med_schools, :resident_fourth, :integer 
    remove_column :med_schools, :non_resident_first, :integer 
    remove_column :med_schools, :non_resident_second, :integer 
    remove_column :med_schools, :non_resident_third, :integer 
    remove_column :med_schools, :non_resident_fourth, :integer 
  end
end
