### States and behaviors 

**States** track attributes to individual objects.
 
**Behaviors** are what on object is able to do.

if we take the `HockeyPlayer` class below, we can see that individual players, have their own individual attributes such as height, weight, skate_size. They have different states, and these are defined with instance variables. 

But all these objects are instances of the `HockeyPlayer` class, meaning they all behave the same. They all deke, shoot, skate, etc. These are all defined within an objects instance methods.


```ruby 
class HockeyPlayer

  def initialize(weight, height, skate_size)
    @weight = weight
    @height = height
    @skate_size = skate_size
  end

  def skate
    "He skates"
  end

  def shoot
    "He shoots"
  end

  def deke
    "He dekes"
  end
end

matz = HockeyPlayer.new(170, 70, 10)
wayne = HockeyPlayer.new(150, 65, 9)
```

## initialize
the `initialize` method gets called every time a new object is created. It is considered a constructor method, since it gets triggered anytime the `new` method is called.

## instance variables

Instance variables are in charge of how we store an object's _state_.

As long as an object exists, instance variables are a way in which we connect data to the object. They look like a local variable, but have a `@` prepended to them like so: `@name`


## Instance methods

Instance methods define a class's behavior.

## Accessor Methods

These are methods in which their only duty is to either _"set"_ or _"get"_ instance variables.

A _getter_ method's duty is to return the value of an instance variable. By convention, the getter method name is the same as the instance variable

```ruby
class Player
	
	def initialize(skate_size)
		@skate_size = skate_size
	end
	
	
 def skate_size
 	@skate_size
 end
end
```

We can then call the method on it's object

```ruby
	matz = Player.new(6)
	matz.skate_size # => 6
```

A setter method acts in a similar way of a getter method, but now we are able to change the instance's variable's value and return that value.

Within Ruby's syntactical sugar, there a special way of defining the setter method as seen below


```ruby
	def skate_size=(new_size)
		@skate_size = new_size
	end

```	

This is the syntax to define the method. When we call it, as seen below, the syntactical sugar makes the human readability easier. 

```ruby
matz.skate_size = 9
```

