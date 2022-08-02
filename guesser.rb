class Guesser

    @@again = true

    def initialize
        puts "Welcome to the Guess a Random Number game."
        sleep 2
        
    end

    def self.again?
        @@again
    end

    def request_max_number
        puts "Please, enter a max number for the game..."
        @max_number = gets.chomp.to_i
        puts "Ok, your max number will be #{@max_number}"
        sleep 2
    end

    def request_attempts
        puts "Please, enter a number of attempts for the game..."
        @attempts = gets.chomp.to_i
        puts "Ok, you will have #{@attempts} attempts to guess the number."
        sleep 2
    end

    def generate_secret
        3.times do
            puts "Generating a secret number..." 
            sleep 1
        end
        
        @secret = Random.rand(@max_number)
        puts "Generation complete!"
        sleep 2
    end

    def request_guess
        loop do
            puts "Please, write your guess.."
            guess = gets.chomp.to_i

            if guess == @secret
                puts "You won!!!"
                puts "================================="
                return play_one_more_time
            elsif guess > @secret
                puts "The number is too high."
            elsif guess < @secret
                puts "The number is too low."
            end

            @attempts = @attempts - 1

            unless @attempts > 0
                puts "You've lost!"
                puts "Game Over."
                puts "================================="
                return play_one_more_time
            end
        end
    end

    private 

    def play_one_more_time
        puts "Would you please to play again? [y/n]"
        answer = gets.chomp
        if answer == "n"
            puts "Good Bye!"
            @@again = false
        end
    end
end