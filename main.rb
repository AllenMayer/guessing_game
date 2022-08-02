require_relative "./guesser.rb"

while Guesser.again? != false do 
    game = Guesser.new
    game.request_max_number
    game.request_attempts
    game.generate_secret
    game.request_guess
end