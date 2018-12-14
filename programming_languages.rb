def reformat_languages(languages)
 
  new_hash = {}
  
  languages.each do |style, value|
    value.each do |k, v|
      v.each do |key, val|
        
        if new_hash.has_key?(k)
          new_hash[k][:style] << style
        else
          new_hash[k] = {}
          new_hash[k][:type] = val
          new_hash[k][:style] = [] << style
        end
      end
    end
  end
  new_hash
end

#Took me a good long while to get this working!