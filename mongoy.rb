require 'rubygems'
require 'sinatra'
require 'mongoid'
#require 'models/person'

Mongoid.load!("./config/mongoid.yml")
configure do
	Mongoid.configure do |config|
#		name = "people"
#		host = "localhost"
#		config.master = Mongo::Connection.new.db("demo")
#		config.slaves = [Mongo::Connection.new(host, 27017, :slave_ok => true).db(name)]
#		config.persist_in_safe_mode = false
	end
end

get '/' do
	chut = Person.new(first_name: "The", last_name: "CHUT")
	chut.save

	"Hello, I am #{chut.first_name} #{chut.last_name}"
end

