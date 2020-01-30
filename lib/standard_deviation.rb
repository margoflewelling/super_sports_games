class Standard_deviation
end

ages = [24, 30, 18, 20, 41]

sum = 0
ages.each do |age|
sum += age
end
puts sum

mean = sum / ages.length
puts "mean = #{mean}"

square_differences = []
ages.each do |age|
square_differences << ((age - mean) * (age - mean))
end

puts square_differences

sum_of_square_differences = 0
square_differences.each do |number|
sum_of_square_differences += number
end
puts "sum of square differences is #{sum_of_square_differences}"

mean_of_squares = sum_of_square_differences / square_differences.length
puts "mean of squares is #{mean_of_squares}"


puts "Standard deviation = #{Math.sqrt(mean_of_squares)}"
