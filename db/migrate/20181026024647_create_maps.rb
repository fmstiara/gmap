class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.string :address
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
