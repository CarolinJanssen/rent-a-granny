class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.text :first_name
      t.text :last_name
      t.integer :number_of_kids

      t.timestamps
    end
  end
end
