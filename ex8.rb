# We set a variabe called formatter. We define placeholders such as first, second etc, use % {} to make it print different values every time we assign that value in the PUTS command.
# This way we can apply the same format to multiple values.
formatter = "%{first} %{second} %{third} %{fourth}"

# Prints 1, 2, 3, 4
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
# Prints one, two, three, four
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
# Prints true or false. This is not a string.
puts formatter % {first: true, second: false, third: true, fourth: false}
# We put a variable in to itself (the same variable). It will print exactly %{first} etc.
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}


# I assigned strings to the placeholders (first, second etc)
puts formatter % {
	first: "I had this thing.",
	second: "That you could type up right.",
	third: "But it didn't sing.",
	fourth: "So I said goodnight."
}
# I set one variable and could make it print different values each time I typed put and passed the placeholders new values.