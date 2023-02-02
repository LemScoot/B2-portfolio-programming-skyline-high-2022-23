def piglatin(word):
  for i in range(len(word)):
    if word[i].lower() in "aeiou":
      return word[i: ] + word[: i] + "ay"


word = input("Enter the word: ")
print(f"{word} --> {piglatin(word)}")
