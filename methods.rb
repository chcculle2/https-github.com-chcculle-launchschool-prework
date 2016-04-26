#print a greeting message
def greeting(name)
  "Welcome "+name+"!"
end

puts greetng("Makena")

#what do the following evaluate to?
# 2
#  nil
#  "Joe"
#  "four"
#  nil

#  Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.
def multiply(n1, n2)
  n1*n2
end

product = multiply(2,5)

#  what will the following code print to the screen?
#  prints nothing because we return.  puts never executed

#edit so we print something
def scream(words)
  words = words + "!!!!"
end

puts scream("Yippeee")

#6 What does the following error message tell you?
# it was expecting 2 arguments
