class CreateCarsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :mileage
      t.string :colour
    end
  end
end
