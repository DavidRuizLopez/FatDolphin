class CreateGears < ActiveRecord::Migration[5.2]
  def change
    create_table :gears do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :price
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
