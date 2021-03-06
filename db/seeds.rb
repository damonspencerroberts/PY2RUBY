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

start = Time.now

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
    code: [
      'x = 7', 
      'if x > 3:', 
      "\treturn 'Greater than 3'", 
      'else:', 
      "\treturn 'Less that 3'"
    ],
    documentation_url: "https://www.programiz.com/python-programming/if-elif-else"
  },
  {
    code: [
      'x = 2', 
      'if x > 3:', 
      "\treturn 'Greater than 3'", 
      'elif x >= 0:', 
      "\treturn 'Between 0 and 3'", 'else:', 
      "\treturn 'Less that 3'"
    ],
    documentation_url: "https://www.programiz.com/python-programming/if-elif-else"
  },
  {
    code: [
      'def add(a, b):',
      "\treturn a + b",
      'add(5, 10)'
    ],
    documentation_url: "https://www.programiz.com/python-programming/function"
  },
  {
    code: [
      'my_array = [1, 1, 2, 3, 4, 5, 5]',
      'list(set(my_array))'
    ],
    documentation_url: "https://www.geeksforgeeks.org/python-set-method/"
  },
  {
    code: [
      'x = 33',
      'int(bin(x)[2:])'
    ],
    documentation_url: "https://stackoverflow.com/questions/3528146/convert-decimal-to-binary-in-python"
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
    code: [
      'x = 7', 
      'if x > 3', 
      "\t'Greater than 3'", 
      'else', 
      "\t'Less than 3'", 
      'end'
    ],
    documentation_url: "https://www.educative.io/edpresso/how-to-write-an-if-else-condition-in-ruby"
  },
  {
    code: [
      'x = 2', 
      'if x > 3', 
      "\t'Greater than 3'", 
      'elsif x >= 0', 
      "\t'Between 0 and 3'", 
      'else', 
      "\t'Less than 0'", 
      'end'
    ],
    documentation_url: "https://www.educative.io/edpresso/how-to-write-an-if-else-condition-in-ruby"
  },
  {
    code: [
      'def add(a, b)',
      "\ta + b",
      'end',
      'add(5, 10)'
    ],
    documentation_url: "https://www.howtogeek.com/howto/programming/ruby/ruby-function-method-syntax/"
  },
  {
    code: [
      'my_array = [1, 1, 2, 3, 4, 5, 5]',
      'my_array.uniq'
    ],
    documentation_url: "https://www.rubyguides.com/2019/08/ruby-uniq-method/"
  },
  {
    code: [
      'x = 33',
      'x.to_s(2)'
    ],
    documentation_url: "https://stackoverflow.com/questions/2339695/how-to-convert-a-string-or-integer-to-binary-in-ruby"
  }
]

puts "Ruby Size: #{ruby_cases.size}"

py_tab = "(Tabs are required for python.)"

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
    description: "Uses the if else statement to return an element if a condition is met of not. #{py_tab}",
    category: "conditional",
    output: "Greater than 3"
  },
  {
    title: "Write a conditional statement with mulitple conditions",
    description: "Conditional statement with multiple conditions to return an element if one of the conditions is met. #{py_tab}",
    category: "conditional",
    output: "Between 0 and 3"
  },
  {
    title: "Writing a simple function for addition",
    description: "How to write a simple function that takes two arguments a and b and returns the sum of them. #{py_tab}",
    category: "function",
    output: "15"
  },
  {
    title: "How to remove duplicates from an array",
    description: "This method takes an argument of an array/list and returns the array while removing all duplicate records.",
    category: "array",
    output: "[1, 2, 3, 4, 5]"
  },
  {
    title: "How to convert an integer to binary",
    description: "This method takes an argument of an integer and returns its binary value.",
    category: "integer",
    output: "100001"
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

[28, 26, 10].each do |id|
  cur = UseCase.find(id)
  cur.update(popular: true)
  cur.save
end
puts "Popular Cases: #{UseCase.where(popular: true).size}"

# {
#   title: "",
#   author: "",
#   url: "",
#   image_url: "",
#   time_length: "",
#   date: "",
#   category: "",
#   description: ""
# }

article_cases = [
  {
    title: "5 Ruby on Rails Tips You Probably Don’t Know",
    author: "Igor Petrov",
    url: "https://medium.com/hackernoon/5-ruby-on-rails-tips-you-probably-dont-know-8b80b4a0890f",
    image_url: "https://miro.medium.com/fit/c/96/96/0*iysI2X3ZkWgelRhQ.",
    time_length: "3 min read",
    date: "Nov 14, 2017",
    category: "Ruby",
    description: "Since I started working with Ruby on Rails, and after several years of using it passed by, I can’t stop wondering when I discover something new in Ruby world. Yes, this is how it works — you know, Ruby is for developer happiness (beyond this there are some other principles) and each year of using it and finding out new stuff supports this feeling inside."
  },
  {
    title: "Solving Einstein’s Riddle with Ruby",
    author: "Sean Handley",
    url: "https://sean-handley.medium.com/solving-einstein-s-riddle-with-ruby-e78ba9ebabe",
    image_url: "https://miro.medium.com/fit/c/56/56/1*mOkukxM6P_b2_umuLn0l1A.jpeg",
    time_length: "7 min read",
    date: "Nov 15, 2015",
    category: "Ruby",
    description: "Doing the rounds again at the moment is the so-called “Einstein’s Riddle”, a puzzle he allegedly described as being too difficult for 98% of the population to solve. Also known as the Zebra puzzle, it involves deducing the nationality of inhabitants of a street of houses, the colour of those houses, and which drink, cigar and pet the occupant prefers. There are five houses in five different colours in a row. In each house lives a person with a different nationality. The five owners drink a certain type of beverage, smoke a certain brand of cigar and keep a certain pet."
  },
  {
    title: "NodeJS vs Ruby on Rails comparison 2017. Which is the best for web development?",
    author: "TechMagic",
    url: "https://medium.com/@TechMagic/nodejs-vs-ruby-on-rails-comparison-2017-which-is-the-best-for-web-development-9aae7a3f08bf",
    image_url: "https://miro.medium.com/fit/c/56/56/1*EiLuTrUpSTkBbA3LagKKIQ.jpeg",
    time_length: "4 min read",
    date: "Feb 3, 2017",
    category: "Ruby",
    description: "It’s hard for a startup to choose the right language for development. One of the biggest fight in development is between Node.JS and Ruby on Rails. So, who is the winner in this fight? The King is dead, long live The King! If you asked this question 5 years ago, it would be definitely Ruby, but time is changing and we have a new leader. Let’s have a look at Google trends"
  },
  {
    title: "How to develop a social network using Ruby on Rails",
    author: "Sudharsanan Muralidharan",
    url: "https://medium.com/rails-ember-beyond/how-to-build-a-social-network-using-rails-eb31da569233",
    image_url: "https://miro.medium.com/fit/c/96/96/1*jeBbZhFK4iY2WcSaAqnhwA.jpeg",
    time_length: "8 min read",
    date: "Jul 23, 2015",
    category: "Ruby",
    description: "I am a Rails fanboy. In my opinion Ruby on Rails is one of the best web development frameworks ever developed. I have been using Rails for more than a year and it’s quite exciting to work with it. Web development has become so much fun for me because of it. For quite some time I have been thinking of writing a blog post on Rails. I am not writing the usual post on “How to develop a blogging platform under 5 minutes using Rails”. "
  },
  {
    title: "An A-Z of useful Python tricks",
    author: "Peter Gleeson",
    url: "https://medium.com/free-code-camp/an-a-z-of-useful-python-tricks-b467524ee747",
    image_url: "https://miro.medium.com/fit/c/96/96/1*jYH_43uKbwiZhfXddHE1BQ.jpeg",
    time_length: "9 min read",
    date: "Aug 28, 2018",
    category: "Python",
    description: "Python is one of the world’s most popular, in-demand programming languages. This is for many reasons: it’s easy to learn it’s super versatile it has a huge range of modules and libraries I use Python daily as an integral part of my job as a data scientist. Along the way, I’ve picked up a few useful tricks and tips. Here, I’ve made an attempt at sharing some of them in an A-Z format. Most of these ‘tricks’ are things I’ve used or stumbled upon during my day-to-day work. Some"
  },
  {
    title: "How to build your own AlphaZero AI using Python and Keras",
    author: "David Foster",
    url: "https://medium.com/applied-data-science/how-to-build-your-own-alphazero-ai-using-python-and-keras-7f664945c188",
    image_url: "https://miro.medium.com/fit/c/56/56/1*QqMD1rth7ahcS7Gc415R9w.jpeg",
    time_length: "11 min read",
    date: "Jan 26, 2018",
    category: "Python",
    description: "In this article I’ll attempt to cover three things: Two reasons why AlphaZero is a massive step forward for Artificial Intelligence How you can build a replica of the AlphaZero methodology to play the game Connect4 How you can adapt the code to plug in other games In March 2016, Deepmind’s AlphaGo beat 18 times world champion Go player Lee Sedol 4–1 in a series watched by over 200 million people. A machine had learnt a super-human strategy for playing Go, a feat previously thought impossible, or at the very least, at least a decade away from being accomplished."
  }
]

article_cases.each do |el|
  new_article = Article.new(el)
  new_article.save
end
puts "Articles length: #{Article.all.size}"

ending = Time.now
puts "Seed file finished in #{(ending - start).round(2)} seconds"