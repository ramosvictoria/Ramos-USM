#Victoria Ramos
#Python - Prof. Xiao

print "   "
print "Welcome to the Pig Latin Translator!"
original = raw_input("Please enter a word: ") #stores the user input into a variable

def pigLatin_Translator():
    word = original.lower() #keeps user input lowercase
    first = word[0] #stores the first letter of the input in a variable called first
    vowels = ("a", "e", "i", "o", "u") #vowels are in a list for later use
    if first in vowels: #condition if word starts with a vowel  
        return word + "hay"
    else: #condition if words starts with a consonant
        return word[1:len(word)] + word[0] + "ay"
print pigLatin_Translator()
