# require modules here
require 'pry'
require 'yaml'


def load_library(file_path)
  library = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(file_path).each do |meaning, emoticons|
    library["get_emoticon"][emoticons[0]] = emoticons[1]
    library["get_meaning"][emoticons[1]] = meaning
  end
  library
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  library["get_emoticon"][emoticon].nil? ? "Sorry, that emoticon was not found" :
  library["get_emoticon"][emoticon]
  end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  library["get_meaning"][emoticon].nil? ? "Sorry, that emoticon was not found" :
  library["get_meaning"][emoticon]
end
