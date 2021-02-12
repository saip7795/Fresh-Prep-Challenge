class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :street
      t.string :city
      t.string :country
      t.string :zipcode
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
