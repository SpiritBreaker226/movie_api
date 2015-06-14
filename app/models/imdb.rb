class Imdb
	include HTTParty
	base_uri 'myapifilms.com'

	def self.all(options = {})
		get("/imdb", query: options)
	end

	def self.find(imdb_id)
		
	end
end