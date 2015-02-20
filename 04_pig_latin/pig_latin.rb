def translate(word)
	word.split(" ").map { |w| translateOneWord(w) }.join(" ")
end

def translateOneWord (some_string)	

	vowels = %w[a e i o u]
	if vowels.include?(some_string[0])
		some_string << "ay"
	elsif some_string[0..1] == "qu"
		qu = some_string.slice!("qu")
		some_string << qu << "ay"
	else
		first = some_string.slice!(0)
		if some_string[0..1] == "qu"
			qu = some_string.slice!("qu")
			return some_string << first << qu << "ay"
		end
		unless vowels.include?(some_string[0])
			second = some_string.slice!(0)
			unless vowels.include?(some_string[0])
				third = some_string.slice!(0)
				return some_string << first << second << third << "ay"
			end
			return some_string << first << second << "ay"
		end
		some_string << first << "ay"
	end
end