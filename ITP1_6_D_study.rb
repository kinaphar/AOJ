def calculate(n,m,a,b)
  c = []
  n.times{|i|
    sum = 0
    m.times{|j|
      sum += a[i][j]*b[j]
    }
    c.push(sum)
  }
  return c
end

a = []
b = []

n, m = gets.split.map(&:to_i)

n.times{
  a.push(gets.split.map(&:to_i))
}

m.times{
  b.push(gets.to_i)
}

puts calculate(n,m,a,b)