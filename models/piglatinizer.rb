class Sinatra::Base
  set :show_exceptions => false

  error { |err|
    Rack::Response.new(
      [{'error' => err.message}.to_json],
      500,
      {'Content-type' => 'application/json'}
    ).finish
  }
end

class PigLatinizer

  def piglatinize(string)
    # binding.pry
    if string == nil
      "Wrong argument"
    elsif string.split(" ").length == 1
      piglatinize_one_word(string)

    else
      piglatinize_sentence(string)
    end
  end

  def piglatinize_one_word(word)
    if word.length == 1
      word + "way"
    elsif vowel?(word[0].downcase)
      word + "way"
    else
      first_consonant(word)
    end
  end

  def piglatinize_sentence(sentence)
    sentence.split(" ").map do |word|
      piglatinize_one_word(word)
    end.join(" ")
  end

  def first_consonant(word)
    if consonant?(word[0])
      word += word[0]
      word.slice!(word[0])
      self.first_consonant(word)
    else
      word + "ay"
    end
  end

  def vowel?(letter)
    vowels = ["a", "e", "i", "o", "u"]
    vowels.include?(letter.downcase) ? true : false
  end

  def consonant?(letter)
    !vowel?(letter)
  end
end
