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

## attr_accessor
Ruby has a built-in way of defining getter and setter methods.
`attr_accessor` takes in symbols as arguments, and will create getter and setter methods of the same name. This makes our code shorter and easier to read

ex: 

```ruby
class HockeyPlayer
	attr_accessor :skate_size

end
```

If we wanted ruby to only create a getter method, we would instead use `attr_reader`. If we wanted ruby to only create a a setter method we would use `attr_writer`

## Referencing and setting instance variables vs. using getters and setters

To reference an instance variable within a method, it can look like this:

```ruby
	def height
		puts "Height is #{@height}"
	end
```

A better way to do this though, is to remove the @, and reference the getter method of the same name.

```ruby
	def height
		puts "Height is #{height}"
	end
```

This is better because is easier to change, and that we may need to do that to the code in the future. We can make the change in just one place, as opposed to multiple places within the code. 

There is one caveat though. We must make sure when we are using these getter/setter methods within a method definition, and not initializing a new local variable. 

let's say we have a method that can change multiple attributes of an object

```ruby
class HockeyPlayer
	attr_accessor :height, :weight
	
	 def change_height_and_weight(h, w)
	 	height = h
	 	weight = w
	 end
end
```
Although our intention with `change_height_and_weight` was to set new values to our setter methods `height` and `weight`, Ruby reads this as new local variables being initialized within the `change_height_and_weight` method definition.

To fix this, we should prepend `self` to the setter methods. This will let ruby know our intention is to call the setter methods.

```ruby
class HockeyPlayer
	attr_accessor :height, :weight
	
	 def change_height_and_weight(h, w)
	 	self.height = h
	 	self.weight = w
	 end
end
```