class PigLatin::Code
  def initialize
  end

  def self.convert(word)
    letters = word.downcase.split("")
    if letters.first == "y"

      first = letters.shift
      return (letters + [first,"ay"]).join

    elsif /\A[aeiou]/.match(word) == nil

        if /qu/.match(letters[0..1].join) != nil
          first = letters.slice!(0..1)
          return (letters + [first,"ay"]).join
        end

      index = 0
      vowel = false
      while (!vowel)
        vowel = true unless /[aeiouy]/.match(letters[index]).nil?
        index += 1 if vowel == false
      end
      first = letters.slice!(0...index)
      return [letters + [first,"ay"]].join

    else

      return (letters + ["way"]).join

    end
  end
  
end
