class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :square_footage
      t.belongs_to :house

      t.timestamps
    end
  end
end
