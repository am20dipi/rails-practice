class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :address
      t.string :city
      t.integer :household_members
      t.string :state
      t.integer :zip_code

      t.timestamps
    end
  end
end
