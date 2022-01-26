

def substrings(string,array)
    string_array = string.downcase.split('')

    newHash = Hash.new(0)

    for word in array
        word_array = word.split('')
        
        string_array.each_with_index{|character,index|
            if character == word_array[0]
                
                add_this_word = true

                word_array.each_with_index{|char, indexB|
                    if string_array[index+indexB] != char
                        add_this_word = false
                    end
                }

                if add_this_word
                    newHash[word] += 1
                end

            end
        }
            

    end
    return(newHash)

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
