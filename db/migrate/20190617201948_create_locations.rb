class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :latitude
      t.string :longitude
      t.belongs_to :user

      t.timestamps
    end
  end
end
