#Victoria Ramos
#Python - Prof. Xiao

#define player
player = 1

#what is given
totalStones = 100
maxStones = 5
pile = totalStones #this is the initial amount
print "There are %s stones in a pile" %totalStones

while True:
    #something for the players move
    print "It is player %s\'s turn now" %player
    turn = int(raw_input("how many stones are you taking out? "))
    #check if input is valid and if not how to make it print error and ask again
    while True:
        if turn in [1,2,3,4,5] or turn < totalStones:
            break
        else:
            print "illegal move. please take between 1 and 5"

    #something that updates the remaining balance
    totalStones = totalStones - turn
    print "the amount of remaining stones is now %s " %totalStones
    
    #keep playing until one stone remains
    if player == 1:
        print "player %s wins " %player
        break

    #switch players
    if player == 1:
        player = 2
    else:
        player = 1
print "game over"

