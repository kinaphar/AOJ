n, m = gets.split.map(&:to_i)

# a = Array.new
a = []

# b = Array.new
b = []

# c = Array.new
c = []

n.times{
  a.push(gets.split.map(&:to_i))
}

m.times{
  b.push(gets.to_i)
}

n.times{|i|
  sum = 0
  m.times{|j|
    sum += a[i][j]*b[j]
  }
  c.push(sum)
}

puts c
