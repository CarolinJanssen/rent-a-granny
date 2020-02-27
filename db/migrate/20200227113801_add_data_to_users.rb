class AddDataToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :district, :string
  	add_column :users, :description, :text
  	add_column :users, :important_notes, :text
  	add_column :users, :number_of_kids, :integer
  end
end
