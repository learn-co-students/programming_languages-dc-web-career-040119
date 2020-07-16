def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |a,b|
    b.each do |c,d|
    if new_hash.has_key?(c)
      new_hash[c][:style]<< a
    else
      new_hash[c] = d
      new_hash[c][:style] = [a]
    end
    end
  end
  new_hash
end
