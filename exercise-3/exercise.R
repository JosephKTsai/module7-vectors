# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 colors (representing marbles).

marbles <- c("red", "orange", "yellow", "green", "blue", "purple")

# Use the `sample()` function to randomly select a single marble

answer <- sample(marbles,1)
# Define a function called MarbleGame. This function should:
# - Takes in a single argument `guess` that is a guess at what color marble will be drawn
# - Randomly samples a marble from the vector
# - Returns whether or not the person guessed accurately (preferrably a character string phrase)
num.guesses <- 0
winner <- FALSE
while (winner != TRUE) {
  num.guesses <- (num.guesses + 1)
  player.guess <- readline(prompt = "Enter your guess (a marble color): ")
  winner <- MarbleGame(player.guess)
}
paste("You win! You guessed the correct color in", num.guesses,"tries!")

MarbleGame <- function(guess) {
  if(guess == answer){
      return(TRUE)
    } else {
      print("Nope, that's not right!")
      return(FALSE)
    }
}

# Play the marble game by guessing a color!


# Bonus: Play the marble game until you win, keeping track of how many tries you take
# Hint, you'll need to use a `while` control structure, which is not covered in the module

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability
