def reformat_languages(languages)
 new_hash = {}

  languages.each do |style, language_hash|
   # puts language_hash
    language_hash.each do |language, type|
      type.each do |key, val|

        if new_hash.has_key?(language)
          new_hash[language][:style] << style
        else
          new_hash[language] = {}
          new_hash[language][:type] = val
          new_hash[language][:style] = [] << style
        end
      end
    end
  end
  new_hash
end

#3-------REFACTORED with 2 instances of .each instead of 3------#

def reformat_languages(languages)
 new_hash = {}

  languages.each do |style, language_hash|
    language_hash.each do |language, type|
      if new_hash.has_key?(language)
        new_hash[language][:style] << style
      else
        new_hash[language] = {}
        new_hash[language][:type] = type.values[0]
        new_hash[language][:style] = [] << style
      end
    end
  end
  new_hash
end