require 'norris_wrapper'

describe NorrisWrapper do

  let(:norris_wrapper) { NorrisWrapper.new }
  let(:uri) { 'http://api.icndb.com/jokes/300' }

  it 'should return a 200 status code from the GET request' do
    response = norris_wrapper.get_JSON_object(uri)
    expect(response.code).to eq 200
  end

  it 'should extract the content of the joke' do
    response = norris_wrapper.get_JSON_object(uri)
    expect(norris_wrapper.get_joke_content(response)).to eq "Chuck Norris eats steak for every single meal. Most times he forgets to kill the cow."
  end

  it 'should substitute "Mihai" for "Chuck Norris"' do
    expect(norris_wrapper.norris_sub("Mihai", 300)).to eq "Mihai eats steak for every single meal. Most times he forgets to kill the cow."
  end

end