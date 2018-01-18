def input_students
  puts "Please enter the names of the students".center(50)
  puts "To finish, just hit return twice".center(50)
  students = []
  cohorts = [:January, :February, :March, :April, :May, :June, :July, :August, :September, :October, :November, :December]
  name = gets.chomp
  while !name.empty? do
    puts "What cohort?".center(50)
  cohort = gets.chomp.capitalize.to_sym
   while true do
     if cohort.empty?
        cohort = "Unavailable"
        break
      elsif cohorts.include?(cohort)
        break
      else
        puts "What Cohort?".center(50)
        cohort = gets.chomp.capitalize.to_sym
        until cohorts.include?(cohort)
        break
      end
    end
  end
    puts "What is their country of birth?".center(50)
    cob = gets.chomp
    puts "What is their height?".center(50)
    height = gets.chomp
    puts "What are their hobbies?".center(50)
    hobbie = gets.chomp
    students << {name: name, cohort: cohort, cob: cob, height: height, hobbie: hobbie}
    if students.count == 1
    puts "Now we have 1 student".center(50)
    puts "Name:".center(50)
    name = gets.chomp
  else
    puts "Now we have #{students.count} students".center(50)
    puts "Name:".center(50)
    name= gets.chomp
  end
end

  students
end

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end

def print(students)
  students.each do |student|
    puts "#{student[:name]}, C.O.B: #{student[:cob]}, Height: #{student[:height]}, hobbies: #{student[:hobbie]}, Cohort:#{student[:cohort]}".center(50)
  end
end

def print_cohort(names)
  cohorts = {}
  names.each do |student|
    name = student[:name]
    student_cohort = student[:cohort]
    if cohorts[student_cohort] == nil
      cohorts[student_cohort] = []
    end
    cohorts[student_cohort] << name
  end
  puts "Students by cohort:".center(50)
  cohorts.each do |k, v|
    puts k
    puts v
  end
end

def print_footer(names)
  if names.count == 1
    puts "Overall, we have #{names.count} great student".center(50)
  else
  puts "Overall, we have #{names.count} great students".center(50)
end
end

students = input_students
print_header
print(students)
print_cohort(students)
print_footer(students)
