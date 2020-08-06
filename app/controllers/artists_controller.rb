class ArtistsController < ApplicationController

	def new
		@artists = Artist.new
	end

end
