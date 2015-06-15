class Imdb
	include HTTParty
	base_uri 'myapifilms.com'

	@@options = { 
		token: ENV["my_api_films"] 
	}

	def self.find_by_title(options = {})
		@@options.merge!(options)

		get("/imdb", query: @@options)
	end

	def self.find(imdb_id)
		@@options[:idIMDB] = imdb_id
		
		get("/imdb", query: @@options)
	end

	def self.top_movies
		get("/imdb/top", query: @@options)
	end
end