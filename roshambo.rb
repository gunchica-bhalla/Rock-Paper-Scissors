puts "Welcome to RoShamBo!"
puts""
puts "This program allows you to play rock paper scissors against a computer." 
puts""
print "What is your name? " 
$name = gets.chomp 
puts""
print "Hi!#{$name}. Let's play.\n"
puts""
puts "I have picked my move."
$p_score=0
$c_score=0
def game
    $comp_choice = 1+rand(3) #generate a random number between 1 and 3 and as 0 is a possible outcome add 1
    $opt = {                 #Map the integer input to a string option
        1 => "Rock",
        2 => "Paper",
        3 => "Scissors",
        4 => "Quit the game"
        }
    def choice  # store the users choice for comparison
        puts ""
        puts "#{$name}, what is your move?"
        puts "1. Rock"
        puts "2. Paper"
        puts "3. Scissors"
        puts "4. Quit the game"
        print "Please enter your move [1-4]:"
        $test = gets.chomp
        $choice = $test.to_i
        $check= $test==1 || $test==2 || $test==3 || $test==4
        
    end # end of choice def
    choice
    if $choice == 4 then     #Check the users input starting if the user wants to quit so to save the program time.
        puts ""
        puts "Final score: #{$name}: #{$p_score}, Computer: #{$c_score}\n"
        puts ""
        if $p_score==$c_score            #Print the message depending on the score
            puts "Well played #{$name}, it is a draw.\n"
        elsif $p_score > $c_score 
            puts "Congratulations #{$name}. You win!\n"
        else
            puts "Sorry you did not win, #{$name}.Play again to try and beat me"
    end # end of when player quits   
    elsif $choice==1 || $choice==2 || $choice==3 || $choice ==4  then   #check the various possible pairs
        if $choice==1 && $comp_choice==2 
            $c_score += 1
        elsif $choice==1 && $comp_choice==3
            $p_score += 1
        elsif $choice==2 && $comp_choice==1 
            $p_score += 1     
        elsif $choice==2 && $comp_choice==3
             $c_score += 1
        elsif $choice==3 && $comp_choice==2 
             $p_score += 1  
        elsif $choice==3 && $comp_choice==1
             $c_score += 1    
        elsif $choice == $comp_choice then
             $c_score += 0
             $p_score += 0
            puts ""
             puts"Great minds think alike!"
        end
        puts ""
        puts "You picked #{$opt[$choice]}. I picked #{$opt[$comp_choice]}"   #display the comparison and score and play untill user decides to Quit
        puts ""
        puts "Score: #{$name}: #{$p_score}, Computer: #{$c_score}"
        puts ""
        puts "I have picked my move."
        game
    end #end of playable game
    if $choice < 1 || $choice > 4 then     #did gives the error message if the choice isnt between 1 and 4 
        puts""
        print "I'm sorry, but #{$test} is not a valid choice.  Please enter a number between 1 and 4.\n\n"
        game
    end 
#end # end of game def
end   
game    
        