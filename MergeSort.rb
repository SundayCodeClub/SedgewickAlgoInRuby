# pg 271 of Algo 4th Edition

def merge!(arr, low, mid, high, aux_arr=[])
  (0...arr.length).each do |i| # Copies the arr into the aux_arr
    aux_arr[i] = arr[i]
  end

  i = low
  j = mid + 1

  (low..high).each do |k|
    if (i > mid)
      arr[k] = aux_arr[j]
      j += 1 # Wish there was a clean way to do j++/i++
    elsif (j > high)
      arr[k] = aux_arr[i]
      i += 1
    elsif (aux_arr[j] < aux_arr[i])
      arr[k] = aux_arr[j]
      j += 1
    else
      arr[k] = aux_arr[i]
      i += 1
    end
  end
  # p aux_arr.object_id # Shows that no new aux_arrs are created
  arr # Line needed for base case, won't work for <=2 element arrays without it
end

# pg 273 of Algo 4th Edition

def mergesort!(arr, low=0, high = arr.length-1, aux_arr=arr.dup) # Did not know about the arr.length as a param
  # aux_arr = arr.dup # Don't need this line if I create the aux_arr in mergesort! params
  # p aux_arr.object_id # Shows that no new aux_arrs are created

  mid = low + (high - low)/2

  return merge!(arr,low,mid,high, aux_arr) if low+1 >= high # Base case

  mergesort!(arr, low, mid, aux_arr)
  mergesort!(arr, mid+1, high, aux_arr)
  merge!(arr,low, mid, high, aux_arr)
  arr
end


1000.times do |x|
  arr = []
  rand(300).times do |y|
    arr << rand
  end
  if (arr.sort != mergesort!(arr))
    puts "Problem!"
  end
end
