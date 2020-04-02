class CreateYearsTableAndAddYearToBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :years do |t|
      t.integer :year
    end

    add_column :books, :year_id, :integer
  end
end
