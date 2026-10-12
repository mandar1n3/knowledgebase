- Every value has a type that determines what action
can be performed on them.
    - Numbers
     - Special numbers `Infinity`, `-Infinity` and `NaN`
     (Used when a numeric operations does not yield a meaningfull result).
    - Strings
        - Stored using the _unicode_ standard.
    - Boolean values
    - Empty values
        - `null` and `undefined`.

## Automatic type conversion
 - When an operator is used on the wrong data type,  javascript will quietly convert that value to the type it needs, using a set of rules that often are not what we expect. This is called _type coercion_.
 - `==` allows for type coercion while `===` performs a strict comparison.

## Short circuiting of logical operators
- The `??` operator, returns the value to the right
only if the value on the left is `false`.
