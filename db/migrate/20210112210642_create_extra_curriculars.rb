class CreateExtraCurriculars < ActiveRecord::Migration[6.0]
  def change
    create_table :extra_curriculars do |t|
      t.text :title
      t.text :group
      t.text :duties, array:true, default: []
      t.date :start
      t.date :end
      t.integer :hours
      t.text :contact_name
      t.text :contact_phone
      t.text :contact_email
      t.boolean :paid
    end
  end
end
