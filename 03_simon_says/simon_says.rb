def echo (some_string)
	some_string
end

def shout (some_string)
	some_string.upcase
end

def repeat (some_string, rep = 2)
	(x = (some_string + " ") * rep).chop
end

def start_of_word (word, range)
	word[0, range]
end

def first_word (some_string)
	some_string.split(" ")[0]
end

def titleize (some_string)
	words = some_string.split.map do |word|
		# if %w(the and over).include?(word)
		if word == "the" || word == "and" || word == "over" 
			word
		else
			word.capitalize
		end
	end
	words.first.capitalize!
	words.join(" ")
end