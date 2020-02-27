class AddAvailableToGears < ActiveRecord::Migration[5.2]
  def change
    add_column :gears, :available, :boolean
  end
end
