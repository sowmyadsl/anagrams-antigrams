# Anagrams and Antigrams

#### Check for anagrams and antigrams, {04/21/2017}_

#### By Sowmya Dinavahi

## Description

Create a website with an anagram method to check for the words with certain conditions .

## Specifications

| Behavior | Input | Output |
|----------|-------|--------|

|The Program will check if two words are anagrams | eg: "tea".check_anagrams("eat")    |   "it is a anagram"    |
|The Program will check if two words are anagrams regardless of case | eg: ("Tea".check_anagrams("eaT"))    |   "it is a anagram"    |
|The program will check to see if two words are also palindromes.  | eg:("elle".check_palindrome) |    "it is a palindrome"    |
| The program will check to ensure that both inputs are actual words by checking to see if they both contain vowels        |  for eg: ("ruby").check_is_a_word    |  "it is a word"      |
|The program will check for the words that are not anagram to check if they are antigrams | for eg: ("hi".check_antigrams("bye") |   "These words have no letter matches and are antigrams." |
|The program will check Remove spaces before comparing anagrams, also check that each individual word in the input string contains a vowel | for eg: "ruby".check_anagrams("ggg h") | 'All inputted words must contain vowels'


## Setup/Installation Requirements

* Clone this repository
* Run $ bundle
* Run $ ruby app.rb
* Browse http://localhost:4567/ in your web browser.


## Known Bugs

No known bugs as of now.

## Support and contact details

Feel free to contact me at sowmya.dsl@gmail.com

## Technologies Used

HTML,CSS ,Ruby

### License

MIT
Copyright (c) 2017 **_{Sowmya Dinavahi}_**
