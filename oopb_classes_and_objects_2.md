## Class Methods

Class methods are methods we can call directly on a class itself, without having to instantiate any objects

```ruby
class Athlete

  def self.can_skate?

  end
end
```

Class methods are how we use functionality that doesn't pertain to any individual object. If a method doesn't make use of an object's state, then we can just use a class method. 

## More About `self`
`self	` can refer to different things depending on its use. It is dependent on its scope within in a class. 


1. using 	`self` as part of a class definition.
2.  using `self` when calling setter methods within a class. This is to make sure we are not initializing a local variable.

When we reference `self` within a class and within an instance method, `self` references the calling object. 


```ruby

	def skate_size
		self.shoe size
		#self refers to the object
	end

```

When we reference `self` from within a class but outside of an instance method, it refers to the class itself.


```ruby

	def self.what_ami
		
		#self refers to class
	end
```

## exercises

We get this error because the setter method, `name=`
