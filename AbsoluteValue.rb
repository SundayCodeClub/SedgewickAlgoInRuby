def absolute(x)
  if x < 0
    return -x
  else
    return x
  end
end

# double method is unnecessary in Ruby, but not Java. In Java,
# public static double abs(double x)
# {
#    if (x < 0.0) return -x;
#    else         return  x;
# }