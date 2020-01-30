class Event
attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
  ages.max
  end

  def min_age
  ages.min
  end

 def average_age
 sum = 0
 ages.each do |age|
 sum += age
 end
 mean = sum.to_f / ages.length
 mean
 @mean = mean
 end

 def standard_deviation_age
   square_differences = []
   ages.each do |age|
   square_differences << ((age - @mean) * (age - @mean))
   end

   sum_of_square_differences = 0
   square_differences.each do |number|
   sum_of_square_differences += number
   end

   mean_of_squares = sum_of_square_differences / square_differences.length

   standard_deviation = Math.sqrt(mean_of_squares)
   standard_deviation.round(2)
 end

end
