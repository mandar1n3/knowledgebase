- Numbers, Boolean and strings are the primitives that compose __data structures__. Objects allow to group values to build more complex structures.

## Properties

- With the exception of `null` and `undefined` all values have properties in Javascript.

- Properties can be accessed in one of two ways: 
    - Using the dot notation `value.x`.
    - Using the bracket notation `value[x]`.

> There are differences between the dot and bracket notation. The value after the dot notation  is the literal name of the property while the value inside the bracket notation  is evaluated to get the property name.


## Methods

- Some properties can hold values that are functions. Properties that contain functions are called *methods*.

- The _stack_ in programming, is a data structure that allows to push values into it and pop them out again in the opposite order so that the thing that was added last is removed first (LIFO).

## Objects 

- Objects are an arbitrary collection of properties, that can be created like so:
```js
let day1 = {
    squirrel: false,
    events: ['work', 'touched tree']
};
```

- Properties that are not valid binding names or valid numbers must be quoted.

- The unary `delete` operator removes a property from an object.
```js
delete day1.events;
```

- We can find out the properties of an object by using the `Object.keys` method, it returns an array of strings with the objects property names. 

- The properties of an object can be copied by using the `Object.assign` method.

## Mutability

- Numbers, Booleans and Strings are immutable.

- For objects there is a difference between having two references to the same object and having two different objects that have the same properties.

- When using `==` for comparing objects in Javascript only the references of the objects are compared. Meaning that expression is truthy only when the objects have the same  reference.

- There is no built-in way to do a deep comparison in Javascript.

## Further Arrayology

 - The `concat` method can be used to append arrays together to create a new
 array containing both values. If the value passed to `concat` is not an 
 array, it will be treated as one element array and appended to the new array.

## Strings and Their Properties

- The `indexOf` method on strings allows for searching for more than one
character.

## Rest Parameters

- To create a function that accepts any number of parameters, we can put three
dots before the function's last parameter.

- The same notation can be used with arrays, this will "spread" out the
contents of the array.

- It also works on objects, if the same property is added multiple times
the last one added wins.

## The Math Object

-  The `Math`  [[namespace]] contains static properties and methods related to mathematical functions and constants.

-  Having to many global bindings pollutes the global [[namespace]], making it more likely to accidentally overwrite an exiting binding.

> Many languages will provide a warning or outright stop us from defining a  binding that with a name that is already taken. Javascript does the same with variables defined with `let`, `const` but not for standard bindings nor  for bindings declared with `var` or `function`.

## Destructuring 

- The destructuring syntax in JavaScript makes it possible to unpack values from an array or properties from objects, into distinct variables. 

```js
const [a, b] = ["one", "two"];
```

## Optional property access

- When we are not sure if a given value produces an object, but still want to read the property when it does, we can use a variant of the dot notation.

```js 
function city(obj) {
	return obj.address?.city;
}
```

- When there is no value `a?.b`  evaluates to undefined.

## JSON

- If we want to send data to another computer or to save it for later we must first serialize it. A popular [[serialization]] format is called JSON (JavaScript Object Notation).

- The differences between json and JavaScript arrays and objects are:
	-  All property names have to be surrounded by double quotes.
	-  Only simple data expressions are allowed.
	-  Comments are not allowed.

- JavaScript provides with `JSON.stringify` and `JSON.parse`  to convert to and from this format.