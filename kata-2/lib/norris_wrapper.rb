require 'httparty'
require 'json'

class NorrisWrapper

  def norris_sub(string, id)
    res = get_JSON_object("http://api.icndb.com/jokes/#{id}")
    joke = get_joke_content(res)
    joke.gsub('Chuck Norris', "#{string}")
  end

  def get_JSON_object(uri)
    res = HTTParty.get(uri)
  end

  def get_joke_content(json_object)
    json_object["value"]["joke"]
  end

end