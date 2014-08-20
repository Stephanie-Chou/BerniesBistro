class Seating < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :reservation
  belongs_to :table
end
