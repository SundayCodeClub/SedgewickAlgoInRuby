# two arrays of strings, see if they're anagrams
def anagram(a, b)
  # each_with_index breaks down the elements of the
  # arrays into strings (can be treateed like arrays)
  # because they are
  a.each_with_index do |e, i|
    # make new hashes for our string arrays
    a_hash = Hash.new(0)
    b_hash = Hash.new(0)

    # loop through both strings
    # l is the index of the letter
     (0...e.length).each do |l|
      # each letter is the key
      # (i = word in array, l = letter in word)
      # add one each time letter appears
      a_hash[a[i][l]] += 1
      b_hash[b[i][l]] += 1
    end
    # if hashes are the same, puts true!
    # if not, puts false!
    puts a_hash == b_hash
  end
end