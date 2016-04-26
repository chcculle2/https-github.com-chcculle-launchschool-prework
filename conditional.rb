def run
  puts "Put in a number"
  a = gets.chomp.to_i

  if a == 3
    puts "a is a 3"
  elsif a == 4
    puts "a is a 4"
  else
    puts "a is neither 3, nor 4"
  end
end


#Write a program that checks if the sequence of characters "lab" exists in the following strings.
#If it does exist, print out the word. -
#{}"laboratory" - "experiment" - "Pans Labyrinth" - "elaborate" - "polar bear"

str_array = "laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"
str_array.each { |word| puts word if word.downcase.include?("lab")}

def take_block(&block)
  block.call
end

take_block do
  puts "Block being called in the method!"
end

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
