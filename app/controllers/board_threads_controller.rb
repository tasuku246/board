class BoardThreadsController < ApplicationController
  def index
    @board_threads = BoardThread.all
  end

  def show
    @board_thread = BoardThread.find(params[:id])
    
  end
end
