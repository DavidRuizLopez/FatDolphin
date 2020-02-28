class AddRequestToRents < ActiveRecord::Migration[5.2]
  def change
    add_column :rents, :request , :boolean, default: false
  end
end
