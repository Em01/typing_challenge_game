#Script name: Typing Challenge
#Description: Demonstrating how to apply conditional logic in order to analyze user input and control
#the execution of the script through a computer typing test.

class Sceen

	def cls
		puts ("\n" * 25)
		puts "\a"
	end

	def pause
		STDIN.gets
	end

end

class Test

	def display_greeting

		Console_Screen.cls 

		print "\t\t Welcome to the Typing Challenge" +
		"\n\n\n\n\n\n\n\n\n\n\n\n\nPress Enter to " +
				"continue. \n\n: "

		Console_Screen.pause 

	end

end

