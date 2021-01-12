class CreateWorkExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :work_experiences do |t|
      t.text :title
      t.text :company
      t.text :company_location
      t.text :duties, array: true, default: []
      t.date :start
      t.date :end
    end
  end
end
