while (m, f, r = gets.split.map(&:to_i)) != [-1, -1, -1]
  if m == -1 || f == -1 || m + f < 30
    puts "F"
  elsif m + f >= 80
    puts "A"
  elsif m + f >= 65
    puts "B"
  elsif m + f >= 50 || m + f >= 30 && r >= 50
    puts "C"
  else
    puts "D"
  end
end
