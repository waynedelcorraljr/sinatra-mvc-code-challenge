class CreateTeasTable < ActiveRecord::Migration
   
    def change 
        create_table :teas do |t|
            t.string :name
        end  
    end
end