#Script name: Typing Challenge
#Description: Demonstrating how to apply conditional logic in order to analyze user input and control
#the execution of the script through a computer typing test.

class Screen

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

	def display_instructions

		Console_Screen.cls
		puts "\t\t\tInstructions:\n\n" 

		puts %Q{ 	This test consists of five typing challenges. Each sentence is a challenge and are presented one at a time. To respond
			correctly you should retype each sentence exactly as it is shown and the press the Enter key. Your grade will be displayed at 
			the end of the test.\n\n\n\n\n\n\n\n\n
			Press Enter to continue.\n\n}

			Console_Screen.pause     

		End

		def present_test(challenge)

			Console_Screen.cls
			print challenge + "\n\n: " 
			result = STDIN.gets 
			result.chop!

			if challenge == result then 

				$noRight += 1
				Console_Screen.cls 
				print "Correct!\n\nPress Enter to continue."
				Console_Screen.pause 

			else

				Console_Screen.cls 
				print "Incorrect!\n\nPress Enter to continue."
				Console_Screen.pause

			end

		end

		def determine_grade

			Console_Screen.cls 

			if $noRight >= 3 then 
				print "You retyped " + $noRight.to_s + " sentence(s) correctly. "
				puts "You have passed the typing test!\n\nPress Enter to continue."

			else 

				print "You retyped " + $noRight.to_s + " sentence(s) correctly. "
				puts "You have failed the typing test!\n\nPress Enter to continue."
			end
		end

		#Main script logic

		$noRight = 0

		console_screen = Screen.new
		typing_test = Test.new 

		typing_test.display_greeting

		console_screen.cls 

		print "Would you like to test your typing skills? (y/n)\n\n: "

		answer = STDIN.gets 
		answer.chop!

		until answer == "y" || answer == "n"

			Console_Screen.cls 

			print "Would you like to test your typing skills? (y/n)\n\n: "

			answer = STDIN.gets

			answer.chop!

		end

		#Analyzing the players response

		if answer == "n"

			Console_Screen.cls
			puts "Okay, perhaps another time! \n\n"

		else

			Typing_Test.display_instructions
			Typing_Test.present_test "In the end there can be only one"
			Typing_Test.present_test "Once upon a time a great plague swept across the land"
			Typing_Test.present_test "Welcome to the typing challenge"
			Typing_Test.present_test "There are very few problems in the world" + "that enough M&Ms cannot fix."
			Typing_Test.present_test "Lets play this game of life together"

			Typing_Test.determine_grade

			Console_Screen.pause

			Console_Screen.cls 
			puts "Thank you for playing the game!\n\n"

		end

end
end

