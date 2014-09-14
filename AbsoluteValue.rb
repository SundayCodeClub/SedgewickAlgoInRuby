def absolute(x)
  if x < 0
    return -x
  else
    return x
  end
end

def double_absolute(x)
  if x < 0.0
    return -x
  else
    return x
  end
end

# These seem to be doing the same thing;
# Both work with integers and floats. Why are they different?