require 'sinatra'

get '/' do
  "<h1>FizzBuzz API</h1><p>Usage:</p><a href='/fizzbuzzes'>/fizzbuzzes</a> or <a href='/fb'>/fb</a><br/><a href='/fizzbuzz/15'>/fizzbuzz/15</a> or <a href='/fb/15'>/fb/15</a>"
end

get '/fizzbuzzes' do
  fizzbuzzes
end

get '/fb' do
  fizzbuzzes
end

get '/fizzbuzz/:n' do |n|
  fizzbuzz(n)
end

get '/fb/:n' do |n|
  fizzbuzz(n)
end

def fizzbuzzes
  (1..100).map{|n| fizzbuzz(n)}.join("\n")
end

def fizzbuzz(n)
  n = n.to_i
  ({6=>'Fizz',10=>'Buzz',0=>'FizzBuzz'}[n**4%15]||n.to_s)
end
