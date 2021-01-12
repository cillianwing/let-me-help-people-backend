class RemoveSyllabusFromCourses < ActiveRecord::Migration[6.0]
  def change
    remove_column :courses, :syllabus
  end
end
