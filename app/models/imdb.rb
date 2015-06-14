class Imdb
	include HTTParty
	base_uri 'myapifilms.com'

	def self.find_by_title(options = {})
		get("/imdb", query: options)
	end

	def self.find(imdb_id)
		
	end
end