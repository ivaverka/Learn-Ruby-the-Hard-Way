#This is a short version of the ex17b.rb

from_file, to_file = ARGV

# It doesn't work
# File.open(to_file, 'w').write (File.open(from_file).read())

# It doesn't work either
File.open(ARGV.second, "w").write(File.open(ARGV.first, "r").read())﻿