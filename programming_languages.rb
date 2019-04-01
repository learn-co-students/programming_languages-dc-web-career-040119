require 'pry'
def reformat_languages(languages)
  # your code here
  n_hash= {}
  jscript= []
  languages.each do |style, data|
     
    data.each do |langs, value|
      value.each do |typ, val|
          
        if langs == :javascript
          jscript<< style
          if jscript.length > 1
          n_hash[langs]= {typ => val, :style => jscript}
        end
        elsif langs != :javascript
           n_hash[langs]= {typ => val, :style => [style]}
        else
          puts 'Nothing'
        end
      
      end
    end
  end
  n_hash
 #binding.pry
end
