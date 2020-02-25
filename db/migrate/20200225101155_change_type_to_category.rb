class ChangeTypeToCategory < ActiveRecord::Migration[5.2]
  def change
    rename_column :gears, :type, :category
  end
end
