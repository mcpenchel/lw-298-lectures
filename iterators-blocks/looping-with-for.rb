

musicians = ['Robert Plant', 'Jimmy Page', 'Jon Bonham', 'Jon Paul Jones']

for index in (0...musicians.length).to_a
  puts "At index #{index}, we have #{musicians[index]}"
end

for musician in musicians
  puts musician
end

def super_startizer(full_name)
  "#{full_name} IS A GREAAAAAT STAR."
end


super_startizer("Matt")
super_startizer("Robert")
