def hi(name)
	puts "Hello #{name}!"
end 


class Greeter 
	def initialize(name = "World")
		@name = name #instance variable available to all methods in the class 
	end 
 	
 	def say_hi 
 		puts "Hello #{@name}!"
 	end 
 	def say_bye 
 		puts "Bye #{name}, come back soon!"
 	end 

 end 

greeter = Greeter.new("George")
greeter.say_hi