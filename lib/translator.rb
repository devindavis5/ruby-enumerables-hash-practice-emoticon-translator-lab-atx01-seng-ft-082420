require 'yaml'
require 'pry'

def load_library(yaml_file)
  library = YAML.load_file('./lib/emoticons.yml')
  
final results = library.each_with_object({}) do |(translation, emojis), emoticons_hash|
  translation.each do 
binding.pry
end
end


def get_english_meaning(file, j_emoticon)
  emoticons = load_library(file)

  
end

def get_japanese_emoticon(file, e_emoticon)
emoticons = load_library(file) 

end
