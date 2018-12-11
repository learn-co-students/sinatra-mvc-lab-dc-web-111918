class PigLatinizer


    def piglatinize(sentence)
      words_arr = sentence.split
      new_arr = []
      words_arr.each do |word|
        if word[0].scan(/a|e|i|o|u|A|E|I|O|U/) == [] && word[1].scan(/a|e|i|o|u/) == [] && word[2].scan(/a|e|i|o|u/) == []
            new_arr << word[3..-1]+ word[0..2] + "ay"
        elsif word[0].scan(/a|e|i|o|u|A|E|I|O|U/)== [] && word[1].scan(/a|e|i|o|u/) == []
            new_arr << word[2..-1]+ word[0..1] + "ay"
        elsif word[0].scan(/a|e|i|o|u|A|E|I|O|U/) == []
            new_arr << word[1..-1] + word[0] + "ay"
        elsif word[0].scan(/a|e|i|o|u|A|E|I|O|U/)!= []
            new_arr << word + "way"
        end
      end

        if new_arr.length > 1
          new_arr.join(" ")
        else
          new_arr.join
        end

    end
  #
  # private
  #
  # def consonant?(char)
  #   !char.match(/[aAeEiIoOuU]/)
  # end
  #
  # def piglatinize_word(word)
  #   # word starts with vowel
  #   if !consonant?(word[0])
  #     word = word + "w"
  #   # word starts with 3 consonants
  #   elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
  #     word = word.slice(3..-1) + word.slice(0,3)
  #   # word starts with 2 consonants
  #   elsif consonant?(word[0]) && consonant?(word[1])
  #     word = word.slice(2..-1) + word.slice(0,2)
  #   # word starts with 1 consonant
  #   else
  #     word = word.slice(1..-1) + word.slice(0)
  #   end
  #   word << "ay"
  # end
  #
  # def piglatinize_sentence(sentence)
  #   sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
  # end
  #



end
