# calc vector's product
def vec_product(a,b)
  a.zip(b).reduce(0){|s,(x,y)|s+x*y}
    # zip : ex) arr1.zip(arr2, arr3)
    # reduce = inject
      # inject enum.inject(init) {|memo, item| block }
    # Enumerable module : for Arrays, Hash (counting etc.)
end

# matrix multiplication
def matrix_mul(a,_b)
  b=_b.transpose
    # `transpose` -ed b (make it easier to handle)
  a.size.times.map{|i|
      b.size.times.map{|j|
          vec_product(a[i],b[j])
      }
  }
end
n,m=gets.split.map(&:to_i)
matrix_mul(*[n,m].map{|e|e.times.map{gets.split.map(&:to_i)}}).each{|e|puts e*' '}
