class BookmarksController < ApplicationController
  before_action :set_bookmark, only: %i[show edit update destroy]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to bookmark_path(@bookmark), notice: "Bookmark was successfully created."
    else
      @bookmark = Bookmark.new(bookmark_params)
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to bookmark_url, notice: 'Bookmark was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
