
def caesar_cipher(string, shifter_number)

	shifter = { "a" => 0, "b" => 1, "c" => 2, "d" => 3, "e" => 4, "f" => 5, "g" => 6, "h" => 7, 
		"i" => 8, "j" => 9, "k" => 10, "l" => 11, "m" => 12, "n" => 13,"o" => 14, "p" => 15, "q" => 16,
		 "r" => 17, "s" => 18, "t" => 19, "u" => 20, "v" => 21, "w" => 22, "x" => 23, "y" => 24, "z" => 25 }

	alphabet = ('a'..'z').to_a
	shift_calculation = 0
	words = string.split(" ")
	letters = []
	encrypted_text = []
	
	words.each do |word|
		new_word = []
		letters = word.split("")

		letters.each do |letter|
			shift_calculation = shifter[letter] + shifter_number
			if shift_calculation > 25
				shift_calculation = shift_calculation - 26
			end
	 		new_word = new_word.push(alphabet[shift_calculation])
		end

		x = new_word.join
		encrypted_text = encrypted_text.push(x)

	end
	puts encrypted_text.join(" ")
end

caesar_cipher("woah broahh what is up my friend", 3)