import random
import time

choices = ["rock", "paper", "scissors"]
while True:
    nComp = random.randint(0, 2)
    compChoice = choices[nComp]
    print("\nRock : 0\tPaper : 1\tScissors : 2")
    nUser = int(input("Enter choice : "))
    userChoice = choices[nUser]
    print(f"\nYou chose : {userChoice}")
    time.sleep(1)
    print(f"Computer chose : {compChoice}")
    time.sleep(2)
    if nUser == 0:
        if nComp == 1:
            print("\nYou lost. Better luck next time")
        elif nComp == 2:
            print("\nYou won!")
        else:
            print("\nIt's a draw")
    if nUser == 1:
        if nComp == 2:
            print("\nYou lost. Better luck next time")
        elif nComp == 0:
            print("\nYou won!")
        else:
            print("\nIt's a draw")
    if nUser == 2:
        if nComp == 0:
            print("\nYou lost. Better luck next time")
        elif nComp == 1:
            print("You won!")
        else:
            print("\nIt's a draw")
    time.sleep(2)
    playAgain = input("\nWant to play again? (y/n)")
    if playAgain == "n":
        break

