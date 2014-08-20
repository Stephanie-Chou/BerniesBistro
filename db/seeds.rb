user = User.create(first_name: "bernie", last_name: "bistro", password: "123", email: "bernie@bistro.com")
10.times do
  Table.create(num_seats: rand(6)+1)
end

reservation = Reservation.create(party_size: 3, date: "august 30", time: "6 pm", user: user)

table = Table.find_by(num_seats: reservation.party_size)
Seating.create(table: table, reservation: reservation)
