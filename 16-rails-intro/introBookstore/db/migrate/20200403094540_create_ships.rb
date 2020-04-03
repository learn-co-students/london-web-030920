class CreateShips < ActiveRecord::Migration[6.0]
  def change
    create_table :ships do |t|
      t.integer :built_year
      t.string :name
      t.references :captain, null: false, foreign_key: true
      t.integer :n_sails

      t.timestamps
    end
  end
end
