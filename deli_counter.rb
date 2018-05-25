# Write your code here.
katz_deli = []

take_a_number(katz_deli, "Ada") #=> Welcome, Ada. You are number 1 in line.
take_a_number(katz_deli, "Grace") #=> Welcome, Grace. You are number 2 in line.
take_a_number(katz_deli, "Kent") #=> Welcome, Kent. You are number 3 in line.

line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"

now_serving(katz_deli) #=> "Currently serving Ada."

line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"

take_a_number(katz_deli, "Matz") #=> Welcome, Matz. You are number 3 in line.

line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"

now_serving(katz_deli) #=> "Currently serving Grace."

line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz"

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  index = katz_deli.size
  puts "Welcome, #{name}. You are number #{index} in line."

end

def now_serving(katz_deli)
  name = katz_deli[0].to_s
  puts "Currently serving #{name}."
  katz_deli.unshift

end

def line(katz_deli)
  if katz_deli.size == 0
    "The line is currently empty."
  else
    line = ""
    katz_deli.each_with_index do |customer, index|
      line.concat("#{index + 1}. #{customer} ")
    end

  end
  "The line is currently: #{line}"

end
