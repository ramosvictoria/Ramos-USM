#Victoria Ramos
#Python - Prof. Xiao

#This will prompt the user to choose either rock, paper, or scissors for both players
print "player 1 and player 2 are playing rock, paper, scissors"
#This is where the user chooses for both players
player1 = raw_input("What does player 1 choose?")
player2 = raw_input("What does player 2 choose?")


if (player1 == 'rock' and player2 == 'paper'):
    print "result: player 2 wins"
elif (player1 == 'rock' and player2 == 'scissors'):
    print "result: player 1 wins"
elif (player1 == 'rock' and player2 == 'rock'):
    print "result: draw"
elif (player1 == 'paper' and player2 == 'scissors'):
    print "result: player 2 wins"
elif (player1 == 'paper' and player2 == 'rock'):
    print "result: player 1 wins"
elif (player1 == 'paper' and player2 == 'paper'):
    print "result: draw"
elif (player1 == 'scissors' and player2 == 'rock'):
    print "result: player 2 wins"
elif (player1 == 'scissors' and player2 == 'paper'):
    print "result: player 1 wins"
elif (player1 == 'scissors' and player2 == 'scissors'):
    print "result: draw"
#If the user writes anything other than rock, paper or scissors the program will print error
else:
    print "error"
