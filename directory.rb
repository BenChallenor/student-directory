def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    puts "What is their country of birth?"
    cob = gets.chomp
    puts "What is their height?"
    height = gets.chomp
    puts "What are their hobbies?"
    hobbie = gets.chomp
    students << {name: name, cob: cob, height: height, hobbie: hobbie, cohort: :november}
    puts "Now we have #{students.count} students"
    name= gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]}, C.O.B: #{student[:cob]}, Height: #{student[:height]}, hobbies: #{student[:hobbie]} (#{student[:cohort]}) cohort"

  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
