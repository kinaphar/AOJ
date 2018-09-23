card = {}
["S", "H", "C", "D"].each{|i|
  card[i] = (1..13).to_a
}

gets.to_i.times{
  suit, rank = gets.split
  card[suit].delete(rank.to_i)
}

card.each{|key, value|
  value.each{|i|
    puts "#{key} #{i}"
  }
}

# Hash に対して each →　第1変数はkey, 第2変数はvalue

