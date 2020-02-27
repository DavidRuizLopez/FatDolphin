class AddCoordinatesToGears < ActiveRecord::Migration[5.2]
  def change
    add_column :gears, :address, :string
    add_column :gears, :latitude, :float
    add_column :gears, :longitude, :float
  end
end
