#loops

def all_caps_if(str)
  if str.len > 10
    str.upcase
    else str
    end
  end

def where_is_num()
  puts "Please enter a number between 0 and 100"
  num = gets.chomp.to_i
  if (num >= 0 && num <= 50)
    puts "number is between 0 and 50"
    elsif (num > 50 && num <= 100)
    puts "number is between 51 and 100"
    elsif (num > 100)
    puts "number is >100"
  end
end


def while_input
  loop do
    puts "Enter an action"
    action = gets.chomp
    puts "you want to #{action}"
    if action == "STOP"
      break
    end
  end
end

#arrays

arr = [2,4,6,7,8]
arr.each_with_index { |n, index| puts "[#{index}]: #{n}" }

def count_to_zero(n)
  if n == 0
    return
  else
  puts "We're Curently at: #{n}"
    count_to_zero(n-1)
  end
end
count_to_zero(3)

def arr_includes?(n)
  arr = [1,3,5,7,9,11]
  arr.include?(n)
end
arr_includes?(9)
arr_includes?(25)

#Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2.

arr = [2,4,6,7,8]
new_arr = arr.map { |x| x*=2 }
p arr
p new_arr

#hashes
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
immediate = family.select { |k,v| k == :sisters  || k == :brothers }

family.each_key { |k| puts k }
family.each_value { |v| puts v }
family.each_key { |k, v| puts "#{k}, #{v}"}

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
#how would you access the name of the person?
person[:name]
value = "web developer"
if person.has_value?(value)
  puts value
end

#Write a program that prints out groups of words that are anagrams.
#Anagrams are words that have the same exact letters in them but in a different order.
#Your output should look something like this:

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

def anagram?(word1, word2)
  if (word1 != word2 && word1.chars.sort.join == word2.chars.sort.join)
    true
  else false
  end
end

def print_anagrams(words)
  words.each do |word1|
    anagrams = []
    anagrams << word1
    words.each do |word2|
      if anagram?(word1, word2)
        anagrams << word2
      end
    end
    p anagrams
  end
end




def anagram
  sorted_words = words.each {|word| word.chars.sort.join}
end
