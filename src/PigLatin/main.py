# Liam Scott | 2/14/2023 | Pig Latin Convertor

# How to do a word
def piglatin(word):
  for i in range(len(word)):
    if word[i].lower() in "aeiou":
      return word[i: ] + word[: i] + "ay"

# How to do a sentence
def pig_latin(word):
  for i in range(len(word)):
    if word[i].lower() in "aeiou":
      return word[i: ] + word[: i] + "ay"

# Input and print statements 
sentence = input("Enter the word or \nsentence for translation: ")
print(' '.join(pig_latin(word) for word in sentence.split()))