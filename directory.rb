def input_students
  puts "Please enter the names of the students".center(50)
  puts "To finish, just hit return twice".center(50)
  students = []
  name = gets.chomp
  while !name.empty? do
    puts "What is their country of birth?".center(50)
    cob = gets.chomp
    puts "What is their height?".center(50)
    height = gets.chomp
    puts "What are their hobbies?".center(50)
    hobbie = gets.chomp
    students << {name: name, cob: cob, height: height, hobbie: hobbie, cohort: :november}
    puts "Now we have #{students.count} students".center(50)
    name= gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end

def print(students)
  students.each do |student|
    puts "#{student[:name]}, C.O.B: #{student[:cob]}, Height: #{student[:height]}, hobbies: #{student[:hobbie]} (#{student[:cohort]}) cohort".center(50)

  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(50)
end

students = input_students
print_header
print(students)
print_footer(students)
