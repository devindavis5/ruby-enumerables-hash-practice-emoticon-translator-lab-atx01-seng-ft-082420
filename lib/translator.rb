require 'yaml'
require 'pry'

def load_library(yaml_file)
  library = YAML.load_file('./lib/emoticons.yml')
  
final_results = library.each_with_object({}) do |(translation, emojis), emoticons_hash|
  emojis.each do |emoji|
    if !emoticons_hash[translation]
      emoticons_hash[translation] = {}
    end
    if !emoticons_hash[translation][:english]
      emoticons_hash[translation][:english] = emojis[0]
    end
      if !emoticons_hash[translation][:japanese]
        emoticons_hash[translation][:japanese] = emojis[1]
      end

end
end
end


def get_english_meaning(file, j_emoticon)
  emoticons = load_library(file)

  
end

def get_japanese_emoticon(file, e_emoticon)
emoticons = load_library(file) 

end
