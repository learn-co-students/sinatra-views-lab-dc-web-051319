require 'date'
class App < Sinatra::Base

	get '/' do
		erb :index
	end
	get '/hello' do
		erb :hello
	end

	get '/goodbye' do
		@name = "Joe"
		erb :goodbye
	end

	get '/date' do
		@days = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)
		@months = %w(January February March April May June July August September October November December)
		@currentTime = Time.now
		erb :date
	end
end
