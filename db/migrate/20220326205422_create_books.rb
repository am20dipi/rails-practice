class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :year_published
      t.integer :number_of_pages
      t.integer :rating

      t.timestamps
    end
  end
end
