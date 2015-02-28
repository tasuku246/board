class PostsController < ApplicationController

  def index
    @board_thread = BoardThread.find(params[:board_thread_id])
    @posts = @board_thread.posts
    @post = Post.new
    @form = PostForm.new
  end

  def create
    @board_thread = BoardThread.find(params[:board_thread_id])
    @post = @board_thread.posts.create!(post_params)
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
