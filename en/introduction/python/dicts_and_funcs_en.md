---
layout: install
permalink: /introduction/dicts_and_funcs_en/
title: Dictionaries und functions
---

What we have shown you so far exists similarly
in many other programming languages.
Now, we'll show you something that is more specific to `python`:
dictionaries.

# Dictionaries

Much like a dictionary, a `dictionary` works by allowing us 
to find content associated with a specific keyword.
In `python`, these are referred to as `keys` and `items`.
As an example, we first create an empty `dictionary`.
Then, we create a `dictionary` named `lectures`
and immediately add a selection of first-semester physics lectures.
Subsequently, in the ninth line, we add the lectures
for the second semester.
Finally, we output several items.
(More on that after the code example.)
```python
empty_dict = dict()  # generates an empty dict
lectures = {
    "Semester 01": [
        "Physics I",
        "Introduction to Programming",
        "Advanced Mathematics I",
    ]
}
lectures["Semester 02"] = ["Physics II", "Advanced Mathematics II"]
print(f"{lectures = }")
print(f"{lectures.keys() = }")
print(f"{lectures.items() = }")
print(f"{lectures["Semester 02"] = }")
```
In the code, you see a line that has been split,
but the code works exactly the same way
as if we were to write it like this.
```python
lectures = {"Semester 01": ["Physics I", "Introduction to Programming", "Advanced Mathematics I"]}
```
It's just that it's more readable, since the line isn't as long.

`dictionary` entries can be added either during the
creation of the `dictionary` or at a later stage.
When displayed, dictionaries don't look quite as neat as lists or
individual variables.
Enclosed in curly braces `{}`, we see the `keys` first,
followed by the associated `items`.
We obtain the lists containing all `keys` and `items`
using the last two outputs.
To retrieve the `item` associated with a specific `key`,
we use square brackets (as with lists) and
insert our `key` inside them.
The output we get here is the list of lectures from
the second semester.

The list of `keys` is very useful
when we want to work with the `items`.
To demonstrate how this works,
we use `for` loops to print out the lectures
we have listed for the semesters.
```python
for key in lectures.keys():
    print(f"In {key}, I attended the lectures")
    for lecture in lectures[key]:
        print(f"- {lecture}")
```
`lectures.keys()` gives us the list of keys from the dictionary, 
and we can use a `for` loop to iterate over them.
`lectures[key]` provides the item associated with that key. 
In this example, the list of lectures for the respective semester is shown.
We then run another `for` loop over this list.
This allows us to display the individual lectures.

Can you modify the code so that the lectures match the ones you attended?

# Writing your own functions
Finally, we'll show you how to write your own functions.
We’ve already shown you using [loops](/introduction/control_structures_en/#Loops){:target="_blank"}
how to repeat lines of code in a specific place.
Functions allow you to reuse parts of your code
in different places over and over again,
without having to rewrite them constantly.
We have frequently used one function provided by Python
in these lessons: `print`.
In the workshop itself, we will show you plenty of other functions,
but here is how you can write any number of your own:
```python
def function_name(argument_0, argument_1, argument_2):
    # Code to be executed
    # for example
    result = argument_1 * (argument_2 - argument_0)
    return result
```
First, let's talk about the syntax.
It starts with the keyword `def` (short for "define"),
followed by the function name, `function_name`.
You can choose this name (mostly) freely, though it is best to avoid names
that already exist in `python` and that you might want to use elsewhere.
Also, as with variable names, it helps if the name clearly explains
what the function does.
The parentheses `()` contain the arguments you want to pass to the function.
These can be variables or even other functions.
The lines that execute when the function is called are indented.
Finally, if you wish, you can return a value from the function.
To do this, we use the keyword `return` followed by the value we want to return.

Now, let's see how to call the function and how to access the return value.
```python
a = 2
b = 3
c = 4
return_value = function_name(a, b, c)
print(f"{return_value = }")
print(f"{function_name(a, b, c) = }")
```
Something must be passed for each argument.
We can then either output the return value directly
or store it in a variable. The latter often makes more sense,
as the stored value can be used for further processing.

One last example is a physical force.
```python
def coulomb_force(q1, q2, r):
    return 1 / (4 * 3.14 * 8.854e-12) * q1 * q2 / r

print(f"F_C = {coulomb_force(1.602e-19, -1.602e-19, 0.01)}")
```
We reduce the number of lines by doing the calculation within the `return` statement.
You are familiar with the formula from your second semester; π is approximated as `3.14`.
We then use `print` to display the force between a positive and
a negative elementary charge separated by a distance of 1 cm.
As you can see, the output is also in `e` notation,
just like the format used for some of the values ​​we specified.

That concludes the lessons in this introduction to `python`.
We'll continue with the [Toolbox Workshop](/#Plan).

# Complete code
At the end of each lesson, you will find the complete code for that lesson.
As this is the last lesson,
[you'll find all the code here.](/introduction/python/complete_introduction_en.py)

```python
"""
This file contains the code for the python introduction of the Toolbox Workshop.
site: https://toolbox.pep-dortmund.org/introduction/python/

The included section is: Dictionaries and functions
"""

print("Lesson 4")
print("Dictionaries")

empty_dict = dict()  # generates an empty dict
lectures = {
    "Semester 01": [
        "Physics I",
        "Introduction to Programming",
        "Advanced Mathematics I",
    ]
}
# lectures = {"Semester 01": ["Physics I", "Introduction to Programming", "Advanced Mathematics I"]}
lectures["Semester 02"] = ["Physics II", "Advanced Mathematics II"]
print(f"{lectures = }")
print(f"{lectures.keys() = }")
print(f"{lectures.items() = }")
print(f"{lectures["Semester 02"] = }")

for key in lectures.keys():
    print(f"In {key}, I attended the lectures")
    for lecture in lectures[key]:
        print(f"- {lecture}")

print("Functions")


def function_name(argument_0, argument_1, argument_2):
    # Code to be executed
    # for example
    result = argument_1 * (argument_2 - argument_0)
    return result


a = 2
b = 3
c = 4
return_value = function_name(a, b, c)
print(f"{return_value = }")
print(f"{function_name(a, b, c) = }")


def coulomb_force(q1, q2, r):
    return 1 / (4 * 22/7 * 8.854e-12) * q1 * q2 / r


print(f"F_C = {coulomb_force(1.602e-19, -1.602e-19, 0.01):.2e}N")
```
