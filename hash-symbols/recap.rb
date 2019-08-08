

# String

address = "Rua Barata Ribeiro 339"
apartment = "Apt 901"

# puts "#{address}, #{apartment}"
# puts address + ", " + apartment

# Array

"Matt"
"Tayler"
"Brittany"

students =     [ "Peter", "Mary", "George", "Emma" ]
student_ages = [ 24     , 25    , 22      ,  20    ]

students.each_with_index do |student, index|
  age = student_ages[index]
  puts "#{student} is #{age}"
end


"#{students[0]} is #{student_ages[0]} years old"
"#{students[1]} is #{student_ages[1]} years old"
"#{students[2]} is #{student_ages[2]} years old"
"#{students[3]} is #{student_ages[3]} years old"

