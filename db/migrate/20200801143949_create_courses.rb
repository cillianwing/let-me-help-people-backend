class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.text :course_number
      t.text :course_name
      t.text :professor
      t.timestamp :start_time
      t.timestamp :end_time
      t.text :days, default: [], array: true
      t.decimal :grade
      t.text :syllabus
      t.text :semester
      t.text :year
      t.text :description

      t.timestamps
    end
  end
end
