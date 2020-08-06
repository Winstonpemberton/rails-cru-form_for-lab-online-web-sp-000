class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

	def new
		@artist = Artist.new
	end

  def create
    @post = Post.create(artist_params)
    redirect_to artist_path(@artist)
  end

  def edit
		@artist = Artist.find(params[:id])
	end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

end
