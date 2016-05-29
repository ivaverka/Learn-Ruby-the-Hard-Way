tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split \non a line."
backlash_cat = "I'm \\ a \\ cat."
formatted_cat = "%{head} %{body} %{eyes}"

fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip \n\t* Grass
"""

puts tabby_cat
puts persian_cat
puts backlash_cat
puts fat_cat
puts formatted_cat % {head: "\vhoofd", body: "\vlichaam", eyes: "\vogen"}
puts formatted_cat % {head: "\fhead", body: "\fbody", eyes: "\feyes"}
puts formatted_cat % {head: "\n\tgalava", body: "\n\tcela", eyes: "\n\tvochy"}
puts formatted_cat % {head: true, body: false, eyes: true}