class PostsController < ApplicationController
  def index
    @posts = Post.all
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
            redirect_to posts_path, :notice => "Your post was saved"
        else
            render ="new"
        end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params[:post].permit(:title, :text))
      redirect_to @post
    else
      render 'edit'
    end
  end

  def edit
    @post = Post.find( params[:id] )
  end

  private
  def post_params
       params.require(:post).permit(:title, :text)
  end

end