class BoardThreadsController < ApplicationController
  def index
    @board_threads = BoardThread.all

  end

  def create
    @board_thread = BoardThread.new(board_thread_params)
    if @board_thread.save
      redirect_to :board_threads
    else
      render action: 'new'
    end
  end

  def new
    @board_thread = BoardThread.new
  end

  def destroy
    @board_thread = BoardThread.find(params[:id])
    @board_thread.destroy!
    redirect_to :board_threads


  end

  private
  def board_thread_params
    params.require(:board_thread).permit(:title, :category)
  end
end
