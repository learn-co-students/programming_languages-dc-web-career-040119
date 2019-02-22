require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, programming_languages|
    programming_languages.each do |language, types|
      if new_hash.has_key?(language)
        new_hash[language][:style] << style
      else
        new_hash[language] = types
        new_hash[language][:style] = []
        new_hash[language][:style] << style
      end
    end
  end
  new_hash
end
