class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def destroy
    @list.destroy
    redirect_to list_url, notice: "List was successfully destroyed."
  end
end
