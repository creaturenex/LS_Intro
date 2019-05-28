irb :001 > name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19}

=> {"Bob"=>42, "Steve"=>31, "Joe"=>19}
irb :002 > name_and_age.has_key?("Steve")
=> true
irb :003 > name_and_age.has_key?("Larry")
=> false


irb :004 > name_and_age.select { |k,v| k == "Bob" }
=> {"Bob"=>42}
irb :005 > name_and_age.select { |k,v| (k == "Bob") || (v == 19) }
=> {"Bob"=>42, "Joe"=>19}


irb :006 > name_and_age.fetch("Steve")
=> 31
irb :007 > name_and_age.fetch("Larry")
=> KeyError: key not found: "Larry"
     from (irb):32:in `fetch'
     from (irb):32
     from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
irb :008 > name_and_age.fetch("Larry", "Larry isn't in this hash")
=> "Larry isn't in this hash"
