class PostsController < ApplicationController
  def index
    @posts = Post.all

    respond_to do |format|
    format.html
    format.json { render json: @posts }
    end
  end

  def show
    @post = Post.find( params[:id] )
  end

  def new
    @post = Post.new

    respond_to do |format|
      format.html
      format.json  { render :json => @post }
    end
  end

  def create
    @post = Post.new(post_params)

    if @post.save
        redirect_to posts_url, :notice => "Your post was saved"
    else
        render ="new"
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params[:post].permit(:title, :text, :image))
      redirect_to @post
    else
      render 'edit'
    end
  end

  def edit
    @post = Post.find( params[:id] )
  end

  def destroy
    @post = Post.find( params[:id])
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.'}
      format.json { head :no_content }
    end
  end

  private
  def post_params
       params.require(:post).permit(:title, :text, :id)
  end

end
