# find maximum of array values
def maximum(a)
  max = a[0]
  a.each do |i|
    if i > max
      max = i
    end
  end
  max
end

# average of array

def average_array(a)
  n = a.length
  sum = 0.0
  a.each do |i|
    sum += i
  end
  sum/n
end

# copy to another array
def array_copy(a)
  n = []
  a.each do |i|
    n.push(i)
  end
  n
end

# Reverse an array

def reverse_array(a)
  new_array = []
  a.length.times do
    new_array << a.pop
  end
  new_array
end
