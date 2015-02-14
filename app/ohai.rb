# coding: utf-8
require 'sinatra'
require 'socket'
require 'redis'

get '/' do
  hostname = Socket.gethostname
  redis = Redis.new(:host => ENV["DATABASE_HOST"], :port => ENV["DATABASE_PORT"], :db => 15)
  visits = redis.incr("visits")
  "Hello World from #{hostname}!<br/>I am connected to #{ENV['DATABASE_HOST']}. This is visit n°#{visits}"
end
