class BoardThreadsController < ApplicationController
  def index
    @board_threads = BoardThread.all
  end

  def show
    @board_thread = BoardThread.find(params[:id])
    @posts = @board_thread.posts
    @post = Post.new
    @form = PostForm.new
    render action: 'show'
  end

  def create
    b = BoardThread.find(params[:id])

    @post = b.posts.new(params[:post_form])
    @post.save!
    render action: 'show'
  end

  def new
    @board_thread = BoardThread.new
  end
end
