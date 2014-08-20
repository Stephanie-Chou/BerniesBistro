class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :reservations
  has_secure_password

end
