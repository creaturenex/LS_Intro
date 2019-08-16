# frozen_string_literal: true

# Final_Exercises/Exercise_10.rb

# Can hash values be arrays? Can you have an array of hashes? (give examples)

puts "Code before watching video

Yes Hash values can be arrays and you can have an array who values are hashes see examples below"

hashex = { superheros: %w[Superman Batman Wonderman], villians: ['Lex Luthor', 'Joker', 'Ares'] }

arrayex = [{ superheros: %w[Superman Batman Wonderman], villians: ['Lex Luthor', 'Joker', 'Ares'] }, { mammals: %w[dog cat mouse], birds: %w[chicken turkey pigeon] }]

p hashex
p arrayex
