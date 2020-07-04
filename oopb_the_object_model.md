# The Object Model

## encapsulation
	
hiding functionality within a program so to not change the data without obvious intent. It is a form of data protection.


--what is a benefit of creating objects?

A programmer can work at a new level of abstraction. Objects are represented as real world nouns. They can have different behaviours via the methods created for them.


## polymorphism

gives us flexibility in representing data in different ways throughout our code. Poly-morph means "many forms"
	
## inheritance
Gives us a way for classes to inherit, or take in, behaviors of another class, aka the superclass. 

This allows us to have classes that have large scale, common methods. As well as subclasses, which have fine-tuned and specific behaviors.

This is a mode of polymorphism.

## Modules

Another use of polymorphism. Similar to inheritance, as they can contain a collection of behaviors that are shared with multiple classes. 

However, modules cannot create objects. Instead they must be 'mixed in' with a class using the `include` method invocation.

## What are objects?

Objects are created from classes. Classes can be seen as the blueprint, or mold, of an object. Individual objects can have different information, yet can be instances of the same class.

```ruby
	"hi".class # String
	"Hello".class # String
```
 
## Method Lookup

Ruby has a distinct order when looking up which class a called method is defined. We can use `ancestors` to see the look up chain.

## How do we create an object in Ruby? Give an example of the creation of an object.

we create objects in Ruby by defining a class. We then call the 'new' method on the class to instantiate a new object, and we can assign it to a local variable. 

```ruby
class Dog


end

new_dog = Dog.new
```
