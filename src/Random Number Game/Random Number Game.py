# Liam Scott | Jan 27, 2023 | Computer Programming 1

import random

attempts = 0
guess = 0

# Generates Random Number
n = random.randrange(0, 101)  # You can change the right number higher or lower to your liking
guess = int(input("Pick any number between 1 and 100 ya dingus: "))
attempts += 1  # Determines how many attempts it took you to get the answer

# Determines if the guess is too high or too low
while n != guess:
    if guess < n:  # If the guess is lower than the number, it runs this
        print("Too Low... Try again ya dingus")
        guess = int(input("\nEnter Number again ya dingus: "))
        attempts += 1
    elif guess > n:  # If the guess is higher than the number, it runs this
        print("Too High... Try again ya dingus")
        guess = int(input("\nEnter Number again ya dingus: "))
        attempts += 1
    else:  # If the guess is right, it runs this
        break
print("You Guessed it!! Good Job ya dingus \n\nIt took you", attempts,
      "tries ya dingus")
attempts += 1
