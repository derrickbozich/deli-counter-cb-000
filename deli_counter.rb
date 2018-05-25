# Write your code here.
katz_deli = []

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  index = katz_deli.size
  puts "Welcome, #{name}. You are number #{index} in line."

end

def now_serving(katz_deli)
  name = katz_deli[0].to_s
  puts "Currently serving #{name}."
  katz_deli.shift

end

def line(katz_deli)
  if katz_deli.size == 0
    puts "The line is currently empty."
  else
    line = ""
    katz_deli.each_with_index do |customer, index|
      line.concat(" #{index + 1}. #{customer}")
      
    end

  end
  puts "The line is currently:#{line}"

end
