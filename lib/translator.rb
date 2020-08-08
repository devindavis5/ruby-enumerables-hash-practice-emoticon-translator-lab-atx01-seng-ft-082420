require 'yaml'
require 'pry'

def load_library(yaml_file)
  library = YAML.load_file('./lib/emoticons.yml')

emoticons_hash = {}

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
  eng_meaning = ""
  
  emoticons.each do |emotion, lang|
    lang.each do |inner_key, emoticon|
      if emoticon == j_emoticon
        eng_meaning = emotion
      end
    end
    if eng_meaning == ""
      eng_meaning = "Sorry, that emoticon was not found"
    end  
  end
  eng_meaning
  
end

def get_japanese_emoticon(file, e_emoticon)
emoticons = load_library(file) 
j_emoticon = ""
j_emoticon_emotion = ""

emoticons.each do |emotion, lang|
 lang.each do |inner_key, emoticon|
   if emoticon == e_emoticon
   j_emoticon_emotion = emotion
 j_emoticon = emoticons[emotion][:japanese]
 end
 #binding.pry
end
if j_emoticon == ""
  j_emoticon = "Sorry, that emoticon was not found"
end
end	
j_emoticon
end
