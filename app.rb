require 'sinatra'

get '/' do
  "<h1>FizzBuzz API</h1><a href='/fizzbuzzes'>/fizzbuzzes</a>\n<a href='/fizzbuzz/1'>/fizzbuzz/1</a>"
end

get '/fizzbuzzes' do
  (1..100).map{|n| fizzbuzz(n)}.join("\n")
end

get '/fb' do
  (1..100).map{|n| fizzbuzz(n)}.join("\n")
end

get '/fizzbuzz/:n' do |n|
  n = n.to_i
  fizzbuzz(n)
end

get '/fb/:n' do |n|
  n = n.to_i
  fizzbuzz(n)
end

def fizzbuzz(n)
  ({6=>'Fizz',10=>'Buzz',0=>'FizzBuzz'}[n**4%15]||n.to_s)
end
