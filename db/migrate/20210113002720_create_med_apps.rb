class CreateMedApps < ActiveRecord::Migration[6.0]
  def change
    create_table :med_apps do |t|
      t.integer :school_id
      t.text :primary_app
      t.text :secondary_app
      t.text :personal_statement
      t.text :primary_essays
      t.text :secondary_essays
      t.text :status
      t.text :details
      t.belongs_to :user

      t.timestamps
    end
  end
end
