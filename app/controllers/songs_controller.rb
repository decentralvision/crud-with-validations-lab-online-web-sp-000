class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to(@song)
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_url
  end

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end
end
