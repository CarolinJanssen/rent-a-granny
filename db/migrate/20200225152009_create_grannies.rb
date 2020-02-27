class CreateGrannies < ActiveRecord::Migration[5.2]
  def change
    create_table :grannies do |t|
      t.string :first_name
      t.string :last_name
      t.string :district
      t.text :description
      t.text :important_notes
      t.integer :price
      t.integer :age
      t.references  :user, foreign_key: true
      t.references  :activity, foreign_key: true

      t.timestamps
    end
  end
end
