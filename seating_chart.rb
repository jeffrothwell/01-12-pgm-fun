require 'awesome_print'

seats = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

sit = 'n'

seats.each_with_index do |row, rownum|
  row.each_with_index do |seat, seatnum|
    if !seat
      puts "Row #{rownum + 1} seat #{seatnum + 1} is free. Do you want to sit there?"
      sit = gets.chomp
      if sit == 'y'
        puts "What is your name?"
        name = gets.chomp
        seats[rownum][seatnum] = name
        break
      end
    end
    if sit == 'y'
      break
    end
  end
  if sit == 'y'
    break
  end
end

ap seats
