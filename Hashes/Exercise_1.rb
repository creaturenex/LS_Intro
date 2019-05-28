# Hashes/Exercise_1.rb

# Given a hash of family members, with keys as the title and an array of names
# as the values, use Ruby's built-in select method to gather only immediate
# family members' names into a new array.

# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

puts "Code before watching video"
family.select { |k,v| (k == "sisters") || (k == "brothers")}
puts "Code did not work
In my code sisters and brothers are sting but if you look at the hash, the keys
are actually symbols or in otherwords unchaning string, which are are typically
used in hashes to label things"

puts "Code after watching video"

immediate_family = family.select { |k, v| (k == :sisters) || (k == :brothers)}

p arr = immediate_family.values.flatten
