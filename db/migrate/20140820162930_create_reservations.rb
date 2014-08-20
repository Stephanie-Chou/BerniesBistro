class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :party_size, :user_id
      t.date :date
      t.time :time
    end
  end
end
