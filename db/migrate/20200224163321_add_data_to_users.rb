class AddDataToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :text
    add_column :users, :last_name, :text
    add_column :users, :number_of_kids, :integer
  end
end
