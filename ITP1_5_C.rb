while (h, w = gets.split.map(&:to_i)) != [0, 0]
  h.times{|i|
    w.times{|j|
      print (i + j) % 2 == 0 ? "#" : "."
    }
    puts
  }
  puts
end

# "文字列"[0, b] → 文字列の最初からb-1文字目まで
# ?a : 文字 a を表すString