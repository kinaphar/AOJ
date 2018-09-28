arrays = []

r, c = gets.split.map(&:to_i)

r.times do
  arr = gets.split.map(&:to_i)
  puts arr.push(arr.inject(:+))*" "
  arrays.push(arr)
end

sumarr = []

c.times do |i|
  tmp = 0
  r.times do |j|
    tmp += arrays[j][i]
  end
  sumarr.push(tmp)
end

puts sumarr.push(sumarr.inject(:+))*" "
