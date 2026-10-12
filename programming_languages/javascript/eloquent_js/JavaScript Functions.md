# Defining A Function
- A function definition is a variable where its value is a function

```js
const square = function(x) {
    return x * x;
};
```
- A `return` statement that is not followed by an expression returns `undefined`.
- The set of variables visible inside a block is determined by the scope of the block it is in. Each local scope can see all the variables in which it is contained and all scopes have access to variables defined in the global scope. This approach to variable visibility is called  _lexical scoping_.

# Functions As Values
- A variable that has as a value a function acts as the name of said function. 
    - The function value can be used like any other value that is assigned to a variable.
    - The function value is defined once and never changed. However the variable, if not constant can be used to point to another value.

# Declaration Notation
- Functions can be declared by using the `function` keyword at the start of the statement and don't require a semicolon at the end.

```js
function square(x) {
    return x * x;
}
```
- Function declarations do not follow the top-to-bottom control flow,  instead they are moved to the top of their scope and can be used by all of the code in the same scope.

# Arrow Functions
- Arrow functions that have a single parameter, the parenthesis can be omitted. If the body of the function is a single expression, the expression is returned.

```js
const square = (x) => { return x * x};
// Or
const cube = x => x * x * x;
```

# The Call Stack
Functions have to jump back to the place they were called, when they return. Because of that the computer has to remember the context in which the call happened. The location in which the context is stored is called __the call stack__.
Every time a function is called, its context is added at the top of  the stack, when a function ends executing (returns). Its context is removed from the top of the stack, and is used to continue the execution of the program.

Since the stack is stored in the computer's memory. When it grows too large and the computer has run out of memory an error is throwed known as _stack overflow_.

# Optional Arguments

In JavaScript if we pass too many arguments, the extra arguments are ignored and if we pass too few arguments, the value of `undefined` is automatically assigned to the missing arguments. 

We can create an optional argument by assigning it a default value.

```js
function sum(a, b = 0) {
    return a + b
}
```

# Closures
Being able to reference a specific instance of a local variable in an enclosing scope is called a _closure_.

> A closure is a function that references variables from the local scopes around it.

```js
function multiplier(factor) {
    return number => number * factor
}

const twice = multiplier(2);
console.log(twice(5))
// 10
```

# Recursion
A recursive function is a function, that makes calls to itself.
```js
function factorial(n) {
    if n == 0 {
        return 1;
    }
    return factorial(n * factorial(n - 1));
}
```

# Functions and Side Effects
A _pure_ function is a function that produces no side effects and the returned value does not rely on the side effects of other code.