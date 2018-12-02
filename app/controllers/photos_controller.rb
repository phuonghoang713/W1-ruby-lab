class PhotosController < ApplicationController
  def index
    # @photos = Photo.all
    @photos = Photo.page params[:page]
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
    @photo =  Photo.new
  end

end
