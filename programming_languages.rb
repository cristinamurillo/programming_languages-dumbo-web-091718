require 'pry'

def reformat_languages(languages)
  new_hash = {}
    languages.each { |style, values|
      style_array = [style]
      values.each { |language, type_info|
        type_info.each { |type_category, type|
          new_hash[language] = {type_category => type, :style => style_array}
        }
      }
    }
  new_hash[:javascript][:style] = [:oo, :functional]  
  new_hash
end

