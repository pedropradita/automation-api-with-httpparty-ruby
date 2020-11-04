require 'httparty'

describe 'POST' do

title = 'recommendation'
body = 'motorcycle'
userId = 12

it 'check response is valid ' do
  response = HTTParty.post('https://jsonplaceholder.typicode.com/posts')
  a = expect(response.parsed_response).to include("id" => 101)
  b = expect(response.code).to eq(201)

  id1 = response["id"]

  puts "id is #{id1.class}"
  puts "id = 101, status #{a}"
  puts "response = 201, status #{b}"

end

end
