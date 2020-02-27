class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :district
      t.text :description
      t.text :important_notes
      t.integer :number_of_kids
	  t.references  :user, foreign_key: true
      t.timestamps
    end
  end
end
