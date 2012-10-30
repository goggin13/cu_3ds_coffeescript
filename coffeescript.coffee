

### Official Documentation
  coffeescript.org
  
  * Coffeescript is a language that compiles 1-1 into the equivalent javascript
  * There is no additional run-time interpration; web sites written
    in Coffeescript continue to serve Javascript to clients
  * Because of this, Coffeescript works seamlessly with any existing 
    JS library, and vice versa.
  * The output of Coffeescript passes JSLint without warnings.
  * It ships with the standard Rails install as of Rails 3.1
    * this means if you are using Rails, all it takes to start using
      Coffeescript is to write .coffee files where your normally put 
      your .js files 
  * Is open source (https://github.com/jashkenas/coffee-script)
  
###



### Other resources
  Peepcode Screencasts (peepcode.com/products/coffeescript) 
    - cost $12, but well worth it
  coffeescript.codeschool.com
###



### Installation
  * install the npm package manager from nodejs.org/download
  * install coffeescript by typing the following into your terminal
    npm install -g coffee-script
    (or possibly)
    sudo npm install -g coffee-script
  * you should now be able to type 'coffee' at the command prompt
    to start an interactive session
  * for textmaters : https://github.com/jashkenas/coffee-script-tmbundle
###  
  
  
  
### Useful commands

* Compile a directory tree of .coffee files into a parallel tree of .js, in lib:
  coffee -o lib/ -c src/

* Watch a file for changes, and recompile it every time the file is saved:
  coffee --watch --compile experimental.coffee

* Combine the previous 2
  coffee --watch -o coffee_js/ -c coffee/

* Concatenate a list of files into a single script:
  coffee --join project.js --compile src/*.coffee

###

  
  
### Functions ###

# function in JS becomes "->" in coffee
square = (x) -> x * x

# explicit "return" not required; the last line in the
# function will become the return value;
cube = (x) -> square(x) * x

# default arguments can be passed a la Python or Ruby
say_hello = (name="matt") -> 
  alert "hello #{name}!"

# invoking functions
say_hello()

# Parentheses are optional if there are > 0 arguments
say_hello("Jane")
say_hello "Jane"



### Objects and Arrays ###

# Coffeescript is white space sensitive

# Commas after newlines can be ommitted
bitlist = [
  1, 0, 1
  0, 0, 1
  1, 1, 0
]

# Curly braces around objects can be ommitted
kids =
  brother:
    name: "Max"
    age:  11
  sister:
    name: "Ida"
    age:  9

simple = hello: 1, world: 2



### If, Else, Unless, and Conditional Assignment ###

if happy and knowsIt
  clapsHands()
  chaChaCha()
else
  showIt()

# if statements return a value
plans = (day) ->
  if day != "Saturday"
    "study"
  else
    "party"

# sexy one liners
mood = greatlyImproved if singing
date = if friday then sue else jill

# unless is the same as "if not"
dance_outside() unless raining



### Chained Comparisons ###

cholesterol = 127
healthy = 200 > cholesterol > 60



### Existential Operator ###

# ? returns true unless a variable is null or undefined

process options if options?

# conditionally set variables
footprints = yeti ? "bear"

# Chain calls which possibly return null
zip = lottery.drawWinner?().address?.zipcode



### Operators 
CoffeeScript	    JavaScript
    is	          ===
    isnt	        !==
    not	          !
    and	          &&
    or	          ||
    true,yes,on	  true
    false,no,off	false
    @,this	      this
    of	          in  
    in	          no JS equivalent
###

# Choose appropriate words for your domain space

launch() if ignition is on

volume = 10 if band isnt SpinalTap

letTheWildRumpusBegin() unless answer is no

if car.speed < limit then accelerate()

winner = yes if pick in [47, 92, 13]



### Debugging challenge! ###
# http://jsfiddle.net/goggin13/hZ9xn/














### Lexical Scoping and Variable Safety ###

# Automatically considers the current functions scope;
# if there is a matching variable, then var is omitted.
# Otherwise an appropriate var declaration is inserted
# at the beginning of the function

outer = 1
changeNumbers = ->
  inner = -1
  outer = 10
inner = changeNumbers()

# if you want global variables, you must explicitly attach
# them to the window object
window.global_variable = "everyone can see me"



### Function Inheritance ###

# recall @ is an alias for "this"
Account = (customer, cart) ->
  @customer = customer
  @cart = cart

  $('.shopping_cart').bind 'click', (event) =>
    @customer.purchase @cart



### Loops and Comprehensions ###

# No for loops!
# While loops are the only low level loops available

# Eat lunch.
eat food for food in ['toast', 'cheese', 'wine']

# Fine five course dining.
courses = ['greens', 'caviar', 'truffles', 'roast', 'cake']
menu i + 1, dish for dish, i in courses

# Health conscious meal.
foods = ['broccoli', 'spinach', 'chocolate']
eat food for food in foods when food isnt 'chocolate'

countdown = (num for num in [10..1])

# Iterate keys and values of an object
ages = for child, age of yearsOld
  "#{child} is #{age}"

# Iterate ONLY keys and values defined on this
# object (not inherited from the prototype)
# using the own keyword (equivalent of iterating
# and using hasOwnProperty in JS)
ages = for own child, age of yearsOld
  "#{child} is #{age}"



### Splats ###

print_list = (list_title, peoples...) ->
  console.log list_title
  console.log person for person in peoples

print_list "my friends", "Jack", "Jill", "Alice", "Bob"
 

  
### Array Slicing ###

# Prettier than numbers.splice() in JS

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
start   = numbers[..2]
middle  = numbers[3...6]
end     = numbers[6..]



### Classes, Inheritance, and Super ###

# Classical OOP 
class Animal
  constructor: (@name) ->

  move: (meters) ->
    alert @name + " moved #{meters}m."

class Snake extends Animal
  move: ->
    alert "Slithering..."
    super 5

class Horse extends Animal
  move: ->
    alert "Galloping..."
    super 45

sam = new Snake "Sammy the Python"
tom = new Horse "Tommy the Palomino"

sam.move()
tom.move()



### Destructuring Assignment ###

weatherReport = (location) ->
  # Make an Ajax request to fetch the weather...
  [location, 72, "Mostly Sunny"]

[city, temp, forecast] = weatherReport "Berkeley, CA"



### String Interpolation ###
author = "Wittgenstein"
quote  = "A picture is a fact. -- #{ author }"

sentence = "#{ 22 / 7 } is a decent approximation of π"

