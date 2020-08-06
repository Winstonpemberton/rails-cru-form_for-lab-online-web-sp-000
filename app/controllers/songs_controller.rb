class SongsController < ApplicationController

  def show
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Genre.new
  end

  def create
    @song = Genre.create(song_params)
    redirect_to song_path(@song)
  end

  def edit
    @song = Genre.find(params[:id])
  end

  def update
    @song = Genre.find(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  private

  def song_params(*args)
    params.require(:genre).permit(:name, :artist_id, :genre_id)
  end

end
