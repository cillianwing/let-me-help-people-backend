class AddDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :age, :date
    add_column :users, :location, :text
    add_column :users, :description, :text
    add_column :users, :traditional, :boolean
    add_column :users, :hobbies, :text, array: true, default: []
    add_column :users, :interests, :text, array: true, default: []
  end
end
