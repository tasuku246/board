class BoardThreadsController < ApplicationController
  def index
    @board_threads = BoardThread.all
  end

end
