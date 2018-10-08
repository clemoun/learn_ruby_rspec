#write your code here
def word_trans(string)
	prefix = ""
	vowel_ind = string =~ /[aeiouy]/
	qu_ind = string =~ /qu/
	if vowel_ind != 0
		if qu_ind && qu_ind < vowel_ind
			prefix = string[0...qu_ind+2]
			string[0...qu_ind+2] = ""
		else
			prefix = string[0...vowel_ind]
			string[0...vowel_ind] = ""
		end
	end
	return string + prefix + "ay"

end

def translate(string)
	array_words = string.split(' ')
	array_words.map! do |word|
		word_trans(word)
	end
	return array_words.join(' ')
end