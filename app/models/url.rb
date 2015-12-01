class Url < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	before_create :shorten 

	def shorten
	  self.short_urls = SecureRandom.hex(6)
	end
end
