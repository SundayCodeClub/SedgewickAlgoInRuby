def gcd(p, q)
  if (q == 0)
    return p
  end
  r = p % q
  puts r
  gcd(q, r)
end

def gdc_t(p, q)
  (q == 0) ? p : ((r = p % q); gcd_t(q, r))
end
