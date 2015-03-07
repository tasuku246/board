class PostsController < ApplicationController

  before_action :authenticate_user!, :only => [:create]


  def index
    @board_thread = BoardThread.find(params[:board_thread_id])
    @posts = @board_thread.posts
    @posts = @posts.page(params[:page])
    @post = Post.new
    @form = PostForm.new
  end

  def show
    @board_thread = BoardThread.find(params[:board_thread_id])
    @post = Post.find(params[:id])
  end

  def create
    @board_thread = BoardThread.find(params[:board_thread_id])
    @post = @board_thread.posts.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to :board_thread_posts
  end

  def destroy
    @board_thread = BoardThread.find(params[:board_thread_id])
    @post = @board_thread.posts.find(params[:id])
    @post.destroy!
    redirect_to :board_thread_posts
  end


  private
  def post_params
    params.require(:post).permit(:post_user_name, :text)
  end


end
