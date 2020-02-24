class CreateGrannies < ActiveRecord::Migration[5.2]
  def change
    create_table :grannies do |t|
      t.text :first_name
      t.text :last_name
      t.integer :age
      t.text :activities
      t.references  :user, foreign_key: true


      t.timestamps
    end
  end
end
