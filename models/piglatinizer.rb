require 'pry'
class PigLatinizer


    def split_p(phrase)
        phrase.split(" ")
    end


    def piglatinize(phrase)
        split_phrase = split_p(phrase)
        split_phrase.map do |word|
        if word.start_with?(/[aAeEiIoOuU]+/)
            word = "#{word}way"
            
            word
        else 
            split_word = word.split(/([aeiou].*)/)
            new_word = "#{split_word[1]}#{split_word[0]}ay"
            
            new_word
        end
        end.join(" ")
    end 


end 