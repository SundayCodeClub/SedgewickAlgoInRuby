

#pg 32
# returns a random double between the values of a and b
def uniform(a, b)
  a + rand()*(b-a)
end

#returns a random int between the values of 0 and n, obvs does not work with negative numbers

def uniform_int(n)
  (rand()*n).to_i
end

#returns a random int between the values of lo and hi
def uniform_int_range(lo, hi)
  lo + rand(hi -lo)
end

# random int value drawn from a  discrete distribution 
# a discrete distrabution is one where the the values are specific numbers, 
# vs a continuous distrabution where the values can be any number between two numbers.
# 
# The example code uses StdRandom.random, which is depriciated in favor of StdRandom.uniform
# yeah this doesnt work right
# maybe the values of the array have to be between 0 and 1? not sure

def discrete(float_ary)
  r = rand() # come up with a random number
  sum = 0.0
  float_ary.each do |num| 
    sum += num #sum up all of the values in the array
    if sum >= r 
      return num.index #when sum >= r, return the position of the current value in the array
    end
  end
  -1 # not sure why we return a negative one here. I think if the array is empty, we return a -1
end

def shuffle(ary)
  n = ary.length
  ary.each do |num|

end