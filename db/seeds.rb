# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Python.destroy_all
Ruby.destroy_all
UseCase.destroy_all

python_cases = [
  {
    code: ["len('robotics')"],
    documentation_url: "https://www.programiz.com/python-programming/methods/built-in/len"
  },
  {
    code: ["my_list = ['r', 'o', 'b', 'o', 't', 'i', 'c', 's']", "my_list[0]"],
    documentation_url: "https://www.geeksforgeeks.org/python-get-first-and-last-elements-of-a-list/"
  },
  {
    code: ["my_list = ['r', 'o', 'b', 'o', 't', 'i', 'c', 's']", "my_list[-1]"],
    documentation_url: "https://www.geeksforgeeks.org/python-get-first-and-last-elements-of-a-list/"
  },
  {
    code: ["my_word = 'robotics'", "list(my_word)"],
    documentation_url: "https://www.programiz.com/python-programming/methods/built-in/list"
  },
  {
    code: ["my_list = ['r', 'o', 'b', 'o', 't', 'i', 'c', 's']", "my_list[:3]"],
    documentation_url: "https://realpython.com/lessons/indexing-and-slicing/"
  },
  {
    code: ["my_list = ['r', 'o', 'b', 'o', 't', 'i', 'c', 's']", "my_list[3:]"],
    documentation_url: "https://realpython.com/lessons/indexing-and-slicing/"
  },
  {
    code: ["my_list = ['r', 'o', 'b', 'o', 't', 'i', 'c', 's']", "my_list.pop(-1)"],
    documentation_url: "https://www.programiz.com/python-programming/methods/list/pop"
  },
  {
    code: ["my_list = ['red', 'orange', 'yellow']", "my_list.append('green')"],
    documentation_url: "https://www.programiz.com/python-programming/methods/list/append"
  },
  {
    code: ["my_list = ['red', 'orange', 'yellow', 'green']", "my_list.pop(0)"],
    documentation_url: "https://www.programiz.com/python-programming/methods/list/pop"
  },
  {
    code: ["my_list = ['The', 'tall', 'man', 'walked', 'on', 'the', 'moon']", "''.join(my_list)"],
    documentation_url: "https://www.programiz.com/python-programming/methods/string/join"
  },
  {
    code: ["my_word = 'campfire'", "my_word.upper()"],
    documentation_url: "https://www.programiz.com/python-programming/methods/string/upper"
  },
  {
    code: ["my_word = 'camPFIre'", "my_word.lower()"],
    documentation_url: "https://www.programiz.com/python-programming/methods/string/lower"
  },
  {
    code: ["my_word = 'campfire'", "my_word.capitalize()"],
    documentation_url: "https://www.geeksforgeeks.org/string-capitalize-python/"
  },
  {
    code: ["import re", "my_word = 'campfire123'", "re.sub('123', '456', my_word)"],
    documentation_url: "https://stackoverflow.com/questions/38773379/simplest-python-equivalent-to-rs-gsub"
  },
  {
    code: ["'campfire'[::-1]"],
    documentation_url: "https://realpython.com/lessons/indexing-and-slicing/"
  },
  {
    code: ["str(12345)"],
    documentation_url: "https://www.programiz.com/python-programming/methods/built-in/str"
  },
  {
    code: ["int('12345')"],
    documentation_url: "https://www.programiz.com/python-programming/methods/built-in/int"
  },
  {
    code: ["new_word = 'hello'", "current_word = 'world'", "new_word + ' ' + current_word"],
    documentation_url: "https://stackoverflow.com/questions/10059554/inserting-characters-at-the-start-and-end-of-a-string"
  },
  {
    code: ["print('Hello World')"],
    documentation_url: "https://www.programiz.com/python-programming/methods/built-in/print"
  },
  {
    code: ['age = 24', 'f"I am {age} years old"'],
    documentation_url: "https://realpython.com/python-f-strings/"
  },
  {
    code: ['my_num = 24', 'my_num % 2 == 0'],
    documentation_url: "https://www.programiz.com/python-programming/examples/odd-even"
  },
  {
    code: ['my_num = 25', 'my_num % 2 != 0'],
    documentation_url: "https://www.programiz.com/python-programming/examples/odd-even"
  },
  {
    code: ['my_num = -5', 'abs(my_num)'],
    documentation_url: "https://www.programiz.com/python-programming/methods/built-in/abs"
  },
  {
    code: ['import math', 'my_num = 5.7', 'math.ceil(my_num)'],
    documentation_url: "https://www.geeksforgeeks.org/floor-ceil-function-python/"
  },
  {
    code: ['import math', 'my_num = 5.7', 'math.floor(my_num)'],
    documentation_url: "https://www.geeksforgeeks.org/floor-ceil-function-python/"
  },
  {
    code: ['x = 7', 'if x > 3:', "\treturn 'Greater than 3'", 'else:', "\treturn 'Less that 3'"],
    documentation_url: "https://www.programiz.com/python-programming/if-elif-else"
  }
]

puts "Python Size: #{python_cases.size}"

ruby_cases = [
  {
    code: ["'robotics'.length()"],
    documentation_url: "https://www.geeksforgeeks.org/ruby-string-length-method/"
  },
  {
    code: ["my_array = ['r', 'o', 'b', 'o', 't', 'i', 'c', 's']", "my_array.first"],
    documentation_url: "https://www.geeksforgeeks.org/ruby-array-class-first-function/"
  },
  {
    code: ["my_array = ['r', 'o', 'b', 'o', 't', 'i', 'c', 's']", "my_array.last"],
    documentation_url: "https://www.geeksforgeeks.org/ruby-array-class-last-function/"
  },
  {
    code: ["my_word = 'robotics'", "my_word.chars"],
    documentation_url: "https://www.geeksforgeeks.org/ruby-string-split-method-with-examples/"
  },
  {
    code: ["my_array = ['r', 'o', 'b', 'o', 't', 'i', 'c', 's']", "my_array.take(3)"],
    documentation_url: "https://www.geeksforgeeks.org/ruby-enumerable-take-function/"
  },
  {
    code: ["my_array = ['r', 'o', 'b', 'o', 't', 'i', 'c', 's']", "my_array.drop(3)"],
    documentation_url: "https://www.geeksforgeeks.org/ruby-enumerable-drop-function/"
  },
  {
    code: ["my_array = ['r', 'o', 'b', 'o', 't', 'i', 'c', 's']", "my_array.pop"],
    documentation_url: "https://www.geeksforgeeks.org/ruby-pop-function/"
  },
  {
    code: ["my_array = ['red', 'orange', 'yellow']", "my_array << 'green'"],
    documentation_url: "https://ruby-doc.org/core-2.7.0/Array.html#method-i-3C-3C"
  },
  {
    code: ["my_array = ['red', 'orange', 'yellow', 'green']", "my_list.shift"],
    documentation_url: "https://www.geeksforgeeks.org/ruby-array-shift-function/"
  },
  {
    code: ["my_array = ['The', 'tall', 'man', 'walked', 'on', 'the', 'moon']", "my_array.join(' ')"],
    documentation_url: "https://www.geeksforgeeks.org/ruby-array-class-join-function/"
  },
  {
    code: ["my_word = 'campfire'", "my_word.upcase"],
    documentation_url: "https://apidock.com/ruby/String/upcase"
  },
  {
    code: ["my_word = 'camPFIre'", "my_word.downcase"],
    documentation_url: "https://apidock.com/ruby/String/downcase"
  },
  {
    code: ["my_word = 'campfire'", "my_word.capitalize"],
    documentation_url: "https://apidock.com/ruby/String/capitalize"
  },
  {
    code: ["my_word = 'campfire123'", "my_word.gsub('123', '456')"],
    documentation_url: "https://apidock.com/ruby/String/gsub"
  },
  {
    code: ["'campfire'.reverse"],
    documentation_url: "https://apidock.com/ruby/String/reverse"
  },
  {
    code: ["12345.to_s"],
    documentation_url: "https://apidock.com/ruby/String/to_s"
  },
  {
    code: ["'12345'.to_i"],
    documentation_url: "https://apidock.com/ruby/String/to_i"
  },
  {
    code: ["' world'.prepend('hello')"],
    documentation_url: "https://apidock.com/ruby/String/prepend"
  },
  {
    code: ["puts 'Hello World'"],
    documentation_url: "https://apidock.com/ruby/IO/puts"
  },
  {
    code: ['age = 24', '"I am #{age} years old"'],
    documentation_url: "https://www.studytonight.com/ruby/interpolation-in-ruby"
  },
  {
    code: ['my_num = 24', 'my_num.even?'],
    documentation_url: "https://www.geeksforgeeks.org/ruby-integer-even-function-with-example/"
  },
  {
    code: ['my_num = 25', 'my_num.odd?'],
    documentation_url: "https://www.geeksforgeeks.org/ruby-integer-odd-function-with-example/"
  },
  {
    code: ['my_num = -5', 'my_num.abs'],
    documentation_url: "https://www.geeksforgeeks.org/ruby-integer-abs-function-with-example/"
  },
  {
    code: ['my_num = 5.7', 'my_num.ceil'],
    documentation_url: "https://stackoverflow.com/questions/39971830/ruby-ceil-and-floor"
  },
  {
    code: ['my_num = 5.7', 'my_num.floor'],
    documentation_url: "https://stackoverflow.com/questions/39971830/ruby-ceil-and-floor"
  },
  {
    code: ['x = 7', 'if x > 3', "\t'Greater than 3'", 'else', "\t'Less than 3'", 'end'],
    documentation_url: "https://www.educative.io/edpresso/how-to-write-an-if-else-condition-in-ruby"
  }
]

puts "Ruby Size: #{ruby_cases.size}"

use_cases = [
  {
    title: "Find the length of a string",
    description: "This function returns the number of items (length) in an object.",
    category: "string",
    output: "8"
  },
  {
    title: "Get first element of array",
    description: "This is an Array class method which returns the first element of the array.",
    category: "array",
    output: "r"
  },
  {
    title: "Get last element of array",
    description: "This is an Array class method which returns the last element of the array.",
    category: "array",
    output: "s"
  },
  {
    title: "Split string into an array of each character",
    description: "This is a String class method/function which returns an array of each character in the string.",
    category: "string",
    output: "['r', 'o', 'b', 'o', 't', 'i', 'c', 's']"
  },
  {
    title: "Get first n elements from an array",
    description: "This is an array method/function which returns the first n elements from an array",
    category: "array",
    output: "['r', 'o', 'b']"
  },
  {
    title: "Get all elements after a certain index position",
    description: "This is an array method/function which returns all the elements after the character at index position n",
    category: "array",
    output: "['o', 't', 'i', 'c', 's']"
  },
  {
    title: "Remove the last element of an array",
    description: "This is an array method/function which removes and returns the last element of an array. It also permanently changes the original array.",
    category: "array",
    output: "s ## => ['r', 'o', 'b', 'o', 't', 'i', 'c']"
  },
  {
    title: "Push element to an array",
    description: "This is an array method/function which pushes a desired element to the end of the array.",
    category: "array",
    output: "['red', 'orange', 'yellow', 'green']"
  },
  {
    title: "Remove the first element of an array",
    description: "This is an array method/function will permantently remove the first element of an array and return this element",
    category: "array",
    output: "red ## => ['orange', 'yellow', 'green']"
  },
  {
    title: "Join an array to a string",
    description: "This is an array method/function will take an array and join it by the paramater set.",
    category: "array",
    output: "The tall man walked on the moon"
  },
  {
    title: "String uppercase method",
    description: "This method converts all lowercase characters in a string into uppercase characters and returns it.",
    category: "string",
    output: "CAMPFIRE"
  },
  {
    title: "String lowercase/downcase method",
    description: "This method converts all characters in a string into lowercase characters and returns it.",
    category: "string",
    output: "campfire"
  },
  {
    title: "String capitalize method",
    description: "This method returns the inputed string as capitalized.",
    category: "string",
    output: "Campfire"
  },
  {
    title: "String sub/gsub method",
    description: "Returns a copy of the inputed string with all occurrences of pattern substituted for the second argument.",
    category: "string",
    output: "campfire456"
  },
  {
    title: "String reverse method",
    description: "Returns a new string with the characters from the string in reverse order.",
    category: "string",
    output: "erifpmac"
  },
  {
    title: "Convert to string method",
    description: "If called on a subclass of String, converts the receiver to a String object.",
    category: "string",
    output: "'12345'"
  },
  {
    title: "Convert to integer method.",
    description: "Returns the result of interpreting leading characters in str as an integer base base (between 2 and 36).",
    category: "string",
    output: "12345"
  },
  {
    title: "Prepend string to another string",
    description: "Add one instance of a string to the the beginning of another string.",
    category: "string",
    output: "hello world"
  },
  {
    title: "Print/puts some sort of object.",
    description: "Prints element to the console.",
    category: "string",
    output: "Hello World"
  },
  {
    title: "Interpolation of a string",
    description: "Can connect variables and join them inside a string.",
    category: "string",
    output: "I am 24 years old."
  },
  {
    title: "Check if a number is even",
    description: "Returns true if a the inputed number is even, otherwise returns false.",
    category: "integer",
    output: "True"
  },
  {
    title: "Check if a number is odd",
    description: "Returns true if a the inputed number is odd, otherwise returns false.",
    category: "integer",
    output: "True"
  },
  {
    title: "Find the absolute value of a number",
    description: "Returns the absolute value or distance from zero of the inputed number.",
    category: "integer",
    output: "5"
  },
  {
    title: "Find the ceiling/closest rounded up integer",
    description: "Returns the closest rounded up integer from the inputed float (decimal).",
    category: "integer",
    output: "6"
  },
  {
    title: "Find the floor/closest rounded down integer",
    description: "Returns the closest rounded down integer from the inputed float (decimal).",
    category: "integer",
    output: "5"
  },
  {
    title: "Write a conditional statement",
    description: "Uses the if else statement to return an element if a condition is met of not. (Tabs are required for python.)",
    category: "conditional",
    output: "Greater than 3"
  }
]

puts "UseCase Size: #{use_cases.size}"

use_cases.each_with_index do |use_case, index|
  py = Python.create(python_cases[index])
  rb = Ruby.create(ruby_cases[index])
  new_case = UseCase.new(use_case)
  new_case.python = py
  new_case.ruby = rb
  new_case.save
end

[26,10,4].each do |id|
  cur = UseCase.find(id)
  cur.update(popular: true)
  cur.save
end

puts "Popular Cases: #{UseCase.where(popular: true).size}"