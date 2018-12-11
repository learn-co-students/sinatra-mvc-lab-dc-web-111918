class PigLatinizer

  attr_accessor :words

  def piglatinize(words)
    arr = words.split
    new_arr = []
    arr.each do |word|
      if word[0].downcase.match(/a|e|i|o|u/).nil? && word[1].downcase.match(/a|e|i|o|u/).nil? && word[2].downcase.match(/a|e|i|o|u/).nil?
          new_arr << word[3..-1]+ word[0..2] + "ay"
      elsif word[0].downcase.match(/a|e|i|o|u/).nil? && word[1].downcase.match(/a|e|i|o|u/).nil?
          new_arr << word[2..-1]+ word[0..1] + "ay"
      elsif word[0].downcase.match(/a|e|i|o|u/).nil?
          new_arr << word[1..-1] + word[0] + "ay"
      elsif word[0].downcase.match(/a|e|i|o|u/)
          new_arr << word + "way"
      end
    end
    if new_arr.length > 1
    new_arr.join(" ")
    else new_arr[0]
    end
  end

end
