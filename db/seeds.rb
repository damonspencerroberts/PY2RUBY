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
  }
]

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
  }
]

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
  }
]

use_cases.each_with_index do |use_case, index|
  py = Python.create(python_cases[index])
  rb = Ruby.create(ruby_cases[index])
  new_case = UseCase.new(use_case)
  new_case.python = py
  new_case.ruby = rb
  new_case.save
end