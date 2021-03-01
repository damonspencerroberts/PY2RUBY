# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


python_cases = [
  {
    code: "len('robotics')",
    documentation_url: "https://www.programiz.com/python-programming/methods/built-in/len"
  }
]

python_cases.each do |pyt|
  Python.create(pyt)
end

ruby_cases = [
  {
    code: "'robotics'.length()",
    documentation_url: "https://www.geeksforgeeks.org/ruby-string-length-method/"
  }
]

ruby_cases.each do |rb|
  Ruby.create(rb)
end

use_cases = [
  {
    title: "Length Function",
    description: "This function returns the number of items (length) in an object.",
    category: "string",
    output: "8",
    python_id: 1,
    ruby_id: 1
  }
]

use_cases.each do |use_case|
  UseCase.create(use_case)
end