"""
This file contains the code for the python introduction of the Toolbox Workshop.
site: https://toolbox.pep-dortmund.org/introduction/python/
"""

# Lection: Die ersten Schritte
print("Lektion 1")

print("Hello World!")  # prints the words Hello World! as an output
# print("Hello World!") <-- this line will be ignored

# Lection: Verschiedene Variablentypen
print("\nLektion 2")

x = 5
print(x)

y = 3
thisisavariable = 4
hereIsAnother = 9.81
this_is_a_multiplicator = 2.1e12

print(f"{x = }")
print(f"{hereIsAnother = }")

print("\nRechenmethoden")
# Addition
print(f"{4 + 2 = }")
print(f"{8 + 4 + 5 = }")
# Subtraction
print(f"{4 - 2 = }")
print(f"{5 - 8 = }")
# Multiplication
print(f"{4 * 2 = }")
print(f"{5 * 8 = }")
# Division
print(f"{4 / 2 = }")
print(f"{5 / 8 = }")
# Exponential
print(f"{4**2 = }")
print(f"{2**(-1) = }")

# Modulo
print(f"{4 % 1 = }")  # = 0
print(f"{4 % 2 = }")  # = 0
print(f"{4 % 3 = }")  # = 1
print(f"{4 % 4 = }")  # = 0
print(f"{4 % 5 = }")  # = 4
# Euclidian division / Division mit Rest
print(f"{3 // 1 = }")  # = 3
print(f"{3 // 2 = }")  # = 1
print(f"{3 // 4 = }")  # = 0

print("\nStrings")
club_name = "PeP et al. e.V."
event = "Toolbox Workshop"
year = "2025"
print(event)
string_addition = club_name + event + year
print(string_addition)

string_addition = club_name + " " + event + " " + year
print(string_addition)
print(club_name, event, year)

print("\nLists")
elements = ["gold", "silver", "copper"]
print(f"{elements = }")
print(f"{elements[1] = }")

print(f"{elements[0] = }", f"{elements[-3] = }")
print(f"{elements[2] = }", f"{elements[-1] = }")

print(f"{elements[0:2] = }")
print(f"{elements[-3:-1] = }")
print(f"{elements[2:] = }")

elements[1] = "titan"
print(f"{elements = }")

elements.append("silver")
print(f"{elements = }")

print(f"{elements+elements[:2] = }")
print(f"{elements * 2 = }")
print(f"{elements = }")

# Lection: Control structures
print("\nLektion 3")

print("Vergleiche")
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

print("\nLoops")
print("while-loop start")
i = 0
while i < 2:
    print(f"{i = }")
    i += 1  # i = i + 1
print("while-loop done")

elements = ["gold", "titan", "copper", "silver"]
for element in elements:
    print(element)

print("for-loop")
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

# Lection: Dictionaries and own functions
print("\nLektion 4")
print("Dictionaries")

empty_dict = dict()  # generates an empty dict
lectures = {
    "Semester 01": [
        "Physik I",
        "Einführung in die Programmierung",
        "Höhere Mathematik I",
    ]
}
# lectures = {"Semester 01": ["Physik I", "Einführung in die Programmierung", "Höhere Mathematik I"]}
lectures["Semester 02"] = ["Physik II", "Höhere Mathematik II"]
print(f"{lectures = }")
print(f"{lectures.keys() = }")
print(f"{lectures.items() = }")
print(f"{lectures["Semester 02"] = }")

for key in lectures.keys():
    print(f"Im {key} hörte ich die Vorlesungen")
    for lecture in lectures[key]:
        print(f"- {lecture}")

print("\nFunctions")


def function_name(argument_0, argument_1, argument_2):
    # Code to be excecuted
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
    return 1 / (4 * 22 / 7 * 8.854e-12) * q1 * q2 / r


print(f"F_C = {coulomb_force(1.602e-19, -1.602e-19, 0.01):.2e}N")
