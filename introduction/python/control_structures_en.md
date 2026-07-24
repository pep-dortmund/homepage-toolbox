---
layout: install
permalink: /introduction/control_structures_en/
title:
---
# Control structures

In this lesson, we'll look at conditionals
and loops as control structures.

## Conditionals
_If_, _else if_ and _else_ constitute a conditional.

_If_ a certain condition is met, we want specific lines of code to execute. 
If not, then they shouldn't. We can take this further and say:
_if_ a case arises, one part of the code should execute,
_else_ another part should execute _if_ a different case is true.
We can repeat this process as often as needed.
Finally, we can collect all the cases
that might still occur with _else_.

In code, for example, it looks like this (do not copy this pseudocode block).
```python
if statement:
    do this
elif different statement:  # elif short for else if
    then do this
else:
    all statements were wrong, do this
```
Here, we can see that the three keywords `if`, `elif`, and `else`
are written in bold.
The first two keywords are followed by statements
that we'll look at in the next section.
It's important to have a colon `:` at the end of each line.
This introduces the part of the code that is executed
if the previous statement is true.
It is also important that the lines are indented
as shown in the code block.
Many programs (like VSC) handle this indentation automatically.
Otherwise, you can create the indentation yourself
by pressing the `Tab` key or `Space` four times.

To begin, let’s take a look at comparisons in Python
so that we can construct the statements.

### Comparisons
At the end of a comparison, we know whether it is correct or incorrect.
In Python, these are represented as `True` and `False`.
Let's try it out. We're already familiar with the operators from mathematics.
The exception is "equals": since `=` assigns a value to a variable,
"equals" is written as `==`.
```python
print(f"{1 < 2 = }")
print(f"{1 == 2 = }")
print(f"{1 > 2 = }")
print(f"{2 < 2 = }")
print(f"{2 <= 2 = }")
```
We can already compare a great deal with this, but there's 
one more important symbol: the exclamation mark `!`.
In Python, we use it to express "not."
Here are a few examples.
```python
print(f"{1 != 2 = }")
print(f"{2 != 2 = }")
```
You can now also write `<` as `!>` and vice versa (`>` as `!<`).
However, it's quite impractical, since it's harder to read.

### `if`
Now, let's write a small program that tells us
whether a number is greater than, less than, or equal to another number.
So, let's define the number we want to compare and the number
we want to compare it against.
Add the following code blocks to the end of your `introduction.py` file.
Run them whenever you want to see the intermediate result,
but definitely run everything when you're finished adding the blocks.
```python
nr_to_compare = 4
compare_to = 3
```
First, let's look at the "less than" case.
We compare whether `nr_to_compare` is less than `compare_to` and then 
output the result, ideally including the actual values.
It could look like this.
```python
if nr_to_compare < compare_to:
    print(f"{nr_to_compare} < {compare_to}")
```
To do this, we first write the keyword `if`
followed by the comparison between the two numbers.
We put a `:` at the end of the line to indicate to Python
that there's a comparison, and that the subsequent indented lines
should be executed if the comparison evaluates to true.
In this block, we output the numbers along with the correct comparison operator.

### `elif`
After doing the initial comparison,
we also need to check
if `nr_to_compare` is greater than `compare_to`.
We don't need to start a new `if`statement for this.
Instead, we can continue with `elif`.
If the comparison following the `if` were true,
this `elif` would be skipped.
```python
elif nr_to_compare > compare_to:
    print(f"{nr_to_compare} > {compare_to}")
```
The syntax here is analogous to `if`: first comes the keyword
`elif` (short for _else if_), then a new comparison,
and finally the `:` to end the line.

We test whether the numbers are equal with another `elif`.
```python
elif nr_to_compare == compare_to:
    print(f"{nr_to_compare} == {compare_to}")
```

### `else`
Technically, the previous comparisons should cover everything,
but we still handle all other cases using `else`.
There is no comparison after `else` here,
so the colon (`:`) follows immediately.
Any cases that do not match an `if` or
`elif` comparison end up here.
We output the values ​​to make it easier to find errors if necessary.
```python
else:
    print(f"Error: {nr_to_compare = }, {compare_to = }")
```

If we run the code now, we see that `4 > 3`.
Try testing other values ​​for `nr_to_compare` and `compare_to` here.
Does everything behave the way you expect?

## <a id="Loops"></a>Loops
Now that we have learned how to write code
that only executes when certain conditions are met,
let's move on to code with repeating elements.
Such control structures are called loops; they repeat
a specific section of code over and over again
as long as a condition is met.
There are several different types of loops.
We'll introduce two of them here.

### `while`
The first type of loop we’ll show you here is the `while` loop.
The keyword here is `while`, followed (just like with `if`) by a statement.
As long as this statement is true, the code in the subsequent indented lines
is executed repeatedly.
```python
# do not include this code block in your introduction.py
while statement:
    do these lines
```

Let's go through how it works using the following example.
Write it into your `introduction.py` and run it again.
```python
print("while loop start")
i = 0
while i < 2:
    print(f"{i = }")
    i += 1  # i = i + 1
print("while loop done")
```
Let’s go through the lines and the output to understand
how the loop works.
Before the loop, we print "while loop start"
so that we can clearly see in the output
where the loop's output begins.
In the second line, we initialize the variable `i` to 0.
Short names like `i` or `j` are commonly used
for variables serving as loop counters.
We read line 3 as: _while i is less than three, do the following_.
Currently, `i = 0` and is therefore less than two,
so the indented lines are executed.
These lines involve printing `i` and then
adding one to `i`.
Then we jump back up to `while i < 2`.
A single pass through the loop is also called an **iteration**.
The value of `i` is now 1, which is still less than two.
`i` is printed again, and one is added to `i`.
At this point, `i = 2`.
The comparison `i < 2` therefore evaluates to `False`,
and the block of indented lines is skipped.
This results in "while loop done" being printed, as this is
the first non-indented line following the `while` keyword.

### `for`
Another type of loop is the `for` loop.
It executes the indented lines for all elements of an object.
Since that can be hard to visualize, let's look at some examples right away.
In the lesson on [lists](/introduction/variables_en/lists){:target="_blank"}, 
we created a list containing various elements. Let's define it again
in case you no longer have it in your file.
```python
elements = ['gold', 'titanium', 'copper', 'silver']
```
Now we want to output each element individually.
To do this, we use a `for` loop and iterate
over our list `elements`.
The code inside the loop consists of a single `print` line.
```python
for element in elements:
    print(element)
```
The output consists of the four elements, one per line,
in the order in which they appear in the list.
This is because `python` executes the following commands:
_For each element in elements, output the content of the variable `element`._
In the first iteration of the loop, the variable is
`element = elements[0]`, which is equivalent to `element = "gold"`.
Inside the loop (within the indented lines)
we can access the current element using `element`.

Let's look at the last point in another example.
```python
numbers = [10, -4, 1]
for x in numbers:
    print(x**2)
print(numbers)
```
Here, we have defined a list of numbers
and are outputting the squares of the numbers.
Finally, we output the list again and see
that it remains unchanged.
Squaring within the loop therefore does not
alter the list's elements, since we are only working with `x` there.

### `range`
This section actually still belongs to the `for` loop,
but here, we'll introduce the very useful `range` function.

First, let's take a look at what `range` can do.
```python
for i in range(3):
    print(i)
```
This way, we can easily obtain numbers between zero and two
(or between zero and another number) without having to write out
a list ourselves when we need these numbers.

Try out the following ranges:
`range(2, 10, 2)` und `range(5, 0, -1)`.

The first `range` outputs the numbers from 2 to 8 in steps of two.
By using the arguments `2`, `10`, and `2`, we specify
that we want the numbers between `2` (inclusive)
and `10` (exclusive) with a step size of `2`.

Similarly, in the second `range`, we specify that we want numbers from 5 down to 0
(using a step size of -1), meaning we are counting backwards.
In this case, the start value must be greater than the end value.
Otherwise, the loop is effectively skipped,
as there are no valid numbers.

Let's continue with [Lesson 4 - Dictionaries and Functions](/introduction/dicts_and_funcs_en).

# Complete code
At the end of each lesson, you will find the complete code for that lesson.

```python
"""
This file contains the code for the python introduction of the Toolbox Workshop.
site: https://toolbox.pep-dortmund.org/introduction/python/

The included section is: control structures
"""

print("Lesson 3")

print("Comparisons")
print(f"{1 < 2 = }")
print(f"{1 == 2 = }")
print(f"{1 > 2 = }")
print(f"{2 < 2 = }")
print(f"{2 <= 2 = }")

print(f"{1 != 2 = }")
print(f"{2 != 2 = }")

print("if-elif-else")
nr_to_compare = 4
compare_to = 3

if nr_to_compare < compare_to:
    print(f"{nr_to_compare} < {compare_to}")
elif nr_to_compare > compare_to:
    print(f"{nr_to_compare} > {compare_to}")
elif nr_to_compare == compare_to:
    print(f"{nr_to_compare} == {compare_to}")
else:
    print(f"Error: {nr_to_compare = }, {compare_to = }")

print("Loops")
print("while loop start")
i = 0
while i < 2:
    print(f"{i = }")
    i += 1  # i = i + 1
print("while loop done")

elements = ['gold', 'titanium', 'copper', 'silver']
for element in elements:
    print(element)

print("for loop")
numbers = [10, -4, 1]
for x in numbers:
    print(x**2)
print(numbers)

print("range 0")
for i in range(3):
    print(i)

print("range 1")
for i in range(2, 10, 2):
    print(i)

print("range 2")
for i in range(5, 0, -1):
    print(i)
```
