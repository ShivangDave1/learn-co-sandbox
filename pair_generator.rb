def build_pairs(names)
  number_of_groups = 0
  pairs = {}
  
  if names.length.even? 
    number_of_groups = names.length / 2
  else
    number_of_groups = names.length / 2 + 1
  end
  
  
  number_of_groups.times do
    
    first = names[rand(0..5)]
    second = names[rand(6..11)]
    
    if !pairs[first] && !pairs[second]
      pairs[first] = second
    end
  end
  
  return pairs
end




puts build_pairs(["first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelveth"])