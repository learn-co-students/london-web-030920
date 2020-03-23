class CreateRidesAndPassengerTables < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.integer :distance
      t.integer :passenger_id
      t.integer :car_id
    end

    create_table :passengers do |t|
      t.string :name
      t.integer :age
    end
  end
end
