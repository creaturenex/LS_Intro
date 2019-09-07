# In the code below, boolean is randomly assigned as true or false.

# boolean = [true, false].sample

# Write a ternary operator that prints "I'm true!" if boolean equals true and prints "I'm false!" if boolean equals false.

# test-expression ? if-true-expression : if-false-expression

boolean = [true, false].sample
boolean ? puts("I'm true!"): puts("I'm false!")
