require 'httparty'

describe 'GET' do

it 'check respon data type is valid ' do

response = HTTParty.get('https://jsonplaceholder.typicode.com/posts')
a = expect(response.code).to eq(200)

userId1 = response[0]["userId"]
id1 = response[0]["id"]
title1 = response[0]["title"]
body1 = response[0]["body"]

puts "userId is #{userId1.class}"
puts "id is #{id1.class}"
puts "title is #{title1.class}"
puts "body is #{body1.class}"
puts "response = 200, status #{a}"

end

end
