class CategoriesController < ApplicationController
  def show
    @board_thread = BoardThread.find(params[:board_thread_id])
    @category = @board_thread.category
    @board_threads = BoardThread.where(category: @category)
  end

end




