class Table < ActiveRecord::Base
  # Remember to create a migration!
  has_many :seatings
  has_many :reservations, through: :seatings
end
