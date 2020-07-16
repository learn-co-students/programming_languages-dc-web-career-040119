def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style,language|
    language.each do |type,str|
    if new_hash.has_key?(type)
      new_hash[type][:style]<< style
    else
      new_hash[type] = str
      new_hash[type][:style] = [style]
    end
    end
  end
  new_hash
end

