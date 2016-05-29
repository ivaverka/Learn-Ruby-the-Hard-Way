class Song

	def initialize(lyrics)
		@lyrics = lyrics
	end

	def sing_me_a_song()
		@lyrics.each {|line| puts line}
	end

end

happy_bday = Song.new(["Happy birthday to you",
	"I don't want to get sued",
	"So I'll stop right here"])

bulls_on_parade = Song.new(["They rally around the family",
	"With pockets full of shell"])

sonet_12 = ["When I do count the clock that tells the time,",
"And see the brave day sunk in hideous night;",
"When I behold the violet past prime,",
"And sable curls all silver'd o'er with white;",
"When lofty trees I see barren of leaves",
"Which erst from heat did canopy the herd,",
"And summer's green all girded up in sheaves",
"Borne on the bier with white and bristly beard,",
"Then of thy beauty do I question make,",
"That thou among the wastes of time must go,",
"Since sweets and beauties do themselves forsake",
"And die as fast as they see others grow;",
"And nothing 'gainst Time's scythe can make defence",
"Save breed, to brave him when he takes thee hence."]

shakespear = Song.new(sonet_12)

shakespear.sing_me_a_song()

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

