seats_and_groups = gets.split(/\s/)
empty_seat = [*1..(seats_and_groups[0].to_i)]
seats_count = empty_seat.count
number_of_visitors = seats_and_groups[1].to_i
puts number_of_visitors
