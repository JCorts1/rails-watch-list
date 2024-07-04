class BookmarksController < ApplicationController
  before_action :set_list, only: [:new, :create]

  def new
    set_list
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(set_list)
    @bookmark.save
    redirect_to @bookmark
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end
end
