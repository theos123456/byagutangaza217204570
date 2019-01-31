class CreateStudentns < ActiveRecord::Migration[5.2]
  def change
    create_table :studentns do |t|
      t.integer :regno
      t.string :name
      t.string :string
      t.string :phone
      t.text :address

      t.timestamps
    end
  end
end
