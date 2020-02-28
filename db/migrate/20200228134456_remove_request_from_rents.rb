class RemoveRequestFromRents < ActiveRecord::Migration[5.2]
  def change
    remove_column :rents, :request
  end
end
