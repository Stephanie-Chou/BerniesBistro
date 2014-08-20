class CreateSeatings < ActiveRecord::Migration
  def change
    create_table :seatings do |t|
      t.integer :reservation_id, :table_id
    end
  end
end
