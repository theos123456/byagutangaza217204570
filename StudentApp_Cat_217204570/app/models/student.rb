class Student < ApplicationRecord
        create_table :student do |t|
          t.string :regno
          t.string :name
          t.string :phone
          t.text :address
          
     
          t.timestamps
        end
end
