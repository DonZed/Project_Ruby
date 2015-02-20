class Book
	attr_reader :title

	def title=(name)
		words = name.split
		litle_words = %w{a an and the in of}
		words.each do |word|
			if litle_words.include? word
				word
			else
			word.capitalize!
			end
		end
		words[0].capitalize!
		@title = words.join(" ")
	end

end