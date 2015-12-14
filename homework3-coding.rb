class Utility

	def count_words(string_input)
		string = string_input.partition(" ")

		array = [string]

		last_element = string[string.length - 1]

		until last_element === ""
			string = last_element.partition(" ")
			array.push(string)
			last_element = string[string.length - 1]
		end

		master_array = []

		array.each do |i|
			master_array.push(i[0])
		end

		master_hash = Hash.new(0) 

		master_array.each do |i|
			master_hash[i] += 1
		end

		return master_hash
	end
end

test = Utility.new()
puts test.count_words("the quick and the dead")

class Animal
	def speak()
		puts "Nothing to say"
	end
end

class Cow
	def speak()
		puts "Moo"
	end
end

animal = Animal.new()
animal.speak()
cow = Cow.new()
cow.speak()

# Difference bw HTTP get and post:

# The get request is meant to retrieve data from the server. 
# The post request is used to submit data to be processed by the server. 
