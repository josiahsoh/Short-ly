class CreateUrls < ActiveRecord::Migration
	def change
	  create_table :urls do |t|
	  	t.string :long_urls
	  	t.string :short_urls
	  	t.timestamps
	  end
	end
end
