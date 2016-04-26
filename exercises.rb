#1 Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each {|n| puts n }

#2 Same as above, but only print out values greater than 5.
arr.each {|n| puts n if n > 5 }

# 3 Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
new_arr = arr.select { |n| n.odd? }

#4 Append "11" to the end of the original array. Prepend "0" to the beginning.
arr.push(11)
arr.unshift(0)

#5 get rid of 11 and append a 3
arr.pop
arr.push(3)

#get rid of duplicates
arr.uniq

#what is the major difference between arrays and hash?
hash has key value pairs and uses the key to reference items

#8 create a hash using both ruby syntax styles
a_hash = Hash.new
a_hash = {}
a_hash = {:item => "hello"}
a_hash = {item: "hello"}

#9
h = {a:1, b:2, c:3, d:4}
#get value of b
h[:b]
# add {e:5} to hash
h[:e] = 5
# Remove all key:value pairs whose value is less than 3.5
h.delete_if { |k, v| v < 3.5}

#10 Can hash values be arrays? Can you have an array of hashes? (give examples)
# yes, hash values can be arrarys.
arr = [1,2,3,4,5]
h[:arr] = arr

#11 Look at several Rails/Ruby online API sources and say which one you like best and why.
# I still don't like any of them.  I have never found them helpful.
# when i'm looking for answers as to how to do something, they have never helped me.

#12 Given the following data structures. Write a program that moves the information
#from the array into
#the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

  contacts.keys.each do |name|
    contact_data.each do |contact_info|
      contacts[name] = contact_info if contact_info.first.split("@").first == name.split.first.downcase
    end
  end

# alternate solution
  contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
              ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
  contact_hash = {"Joe Smith" => {}, "Sally Johnson" => {}}

    contact_hash.keys.each do |key|
      contact_data.each do |contact_info|
        if contact_info.first.split("@").first == key.split.first.downcase
          contact_hash[key][:email] = contact_info[0]
          contact_hash[key][:address] = contact_info[1]
          contact_hash[key][:phone] = contact_info[2]
        end
      end
    end

# 13 Using the hash you created from the previous exercise,
# demonstrate how you would access Joe's email and Sally's phone number?
joes_email = contact_hash["Joe Smith"][:email]
sallys_phone = contact_hash["Sally Johnson"][:phone]

#14

  contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
              ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
  contact_hash = {"Joe Smith" => {}, "Sally Johnson" => {}}
  hash_fields = [:email, :address, :phone]
    contact_hash.each do |key, hash_value|
      contact_data.each do |contact_info|
        if !contact_info.empty? && contact_info.first.split("@").first == key.split.first.downcase
          hash_fields.each { |field| hash_value[field] = contact_info.shift }
        end
      end
    end

 # 15 Use Ruby's Array method delete_if and String method start_with? to delete all of
 # the words that begin with an "s" in the following array.
    arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
    arr.delete_if { |word| word.start_with?("s") }
