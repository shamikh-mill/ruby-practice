# https://www.ruby-lang.org/en/documentation/quickstart/

def hi(name)
	puts "Hello #{name}!"
end 


class Greeter 
	def initialize(name = "World")
		@name = name #instance variable available to all methods in the class 
	end 
 	
 	def say_hi 
 		puts "Hello #{@name}!"  #need the @name in all the methods 
 	end 
 	def say_bye 
 		puts "Bye #{@name}, come back soon!"
 	end 

 end 

greeter = Greeter.new("George")
greeter.say_hi
greeter.say_bye

puts Greeter.instance_methods(false) #methods in class 


class MegaGreeter 
	attr_accessor :names  #method used to define attributes for instances of a class.

	# create the object 
	def initialize(names = "World")
		@names = names 
	end 

	#say hi to everybody 
	 # Say hi to everybody
  def say_hi
    if @names.nil?
      puts "..."  # greeting nobody, nil = null 
    elsif @names.respond_to?("each")  # if @names responds to each, it is iterable 

      # The convention in Ruby is that a method which returns true or false should have a name ending in a ?
      # @names is a list of some kind, iterate!
      @names.each do |name|   #.each will do something for each in something. \name\ is lambda function. 
      	# for each element in the list, will bound name = element
        puts "Hello #{name}!"
      end
    else # anything else, just print Hello + string
      puts "Hello #{@names}!"
    end
  end
	# say bye to everyone

	 def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      # Join the list elements with commas
      puts "Goodbye #{@names.join(", ")}.  Come back soon!"
    else
      puts "Goodbye #{@names}.  Come back soon!"
    end
  end
end



if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # Change name to be "Shamikh"
  mg.names = "Shamikh"
  mg.say_hi
  mg.say_bye

  # Change the name to an array of names, will respond to each! 
  mg.names = ["Kevin", "John", "Eddy", "Carter", "Tiniv"]
  mg.say_hi
  mg.say_bye

  # Change to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye
end


10.times do 
  puts "Hello!"
end 


5.times { puts "Hello, World!" }
#iteration 


#maps 
produce = {"apples" => 3, "oranges" => 1, "carrots" => 12}
puts produce["apples"] # need the quotations 




