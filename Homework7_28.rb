#Julie Torres Homework 7/28/2014


#Function to define hypotenuse
def hypotenuse(a, b)
  hyp = Math.hypot(a, b)
  puts hyp
end

######## Bullet Point Number 4 #########
#String Methods
poem = "Two roads diverged in a yellow wood and I I took the one less travelled by"
poem_char = poem.each_char {|c| print c, ' '}
#Array methods
mess = Array.new
poem_char.each_codepoint {|c| mess << c}

#And for my next trick, I will sum all the codepoints, for no particular reason.
sum = 0
mess.each {|c| sum +=c}
puts #for a line break
puts "And the total is #{sum}"

#Integer Methods
meaningless_number = sum ** 2
puts meaningless_number
#Is it divisible by 2? True or false
if meaningless_number % 2 == 0
  puts "The number is Even! Yay! I don't know why I'm so excited!"
else
  puts "It's Odd"
end

#Symbol Methods
:symbol.empty?
symbol = :symbol.id2name
puts symbol

#Hash Methods
hash = {:a => 1, :b => 2}
h2 = {a: 6, c: 7}
hash.merge!(h2)
puts hash[:a]

#######Bullet Point # 5: Musher Class #######
class Musher
  def initialize(input)
    @input = input
  end
  def mush(array)
    array.join(" #{@input} ")
  end
end

array =["Once", "upon", "a", "time" ]
puts Musher.new("+").mush(array)

class Averager
  def initialize(array)
    @array = array
  end

  def sum
    @array.inject(0.0) {|result, num| result + num}
  end

  def mean
    sum / @array.size
  end
end

puts Averager.new([3,4,5,6]).sum
puts Averager.new([3,4,5,6]).mean

#Read File & Print Random Line
array = IO.readlines("file.txt")
puts array.sample
