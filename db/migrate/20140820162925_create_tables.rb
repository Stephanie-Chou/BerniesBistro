class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.integer :num_seats
    end
  end
end
