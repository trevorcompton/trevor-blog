class PostsController < ApplicationController
  # because of this inheritance, this ruby file knows to act like a controller
  def index # <- the index action: an action is simply a publicly-accessible ruby method defined in a controller class
    @posts = Post.all
  end

  def show
    # @post = Post.find(1)
    # params is a variable
    @post = Post.find(params[:id]) # <- this shows the route to find the request parameter in the URL, like /post/45, etc.
  # class/object.method(method parameters)

  # any URL parameters are automatically captured in a hash called params
  # params is a hash accessible in any action
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update # update needs two things: the post id and the hash coming from the form
    @post = Post.find(params[:id])
    # post_params = params.require(:post).permit(:name, :textfield, :category, :date_published) # <- safety check to make sure the hash has a key, then we permit attributes that can be mass assigned
    @post.update(post_params) # :post is the key to the value of all the form data
    # redirect_to post_path(@post) # <- resolves to show action
    redirect_to @post # this is shorthand for the above line
  end

  # <input type="hidden" name="_method" value="patch"> <-- this is what rails looks for since the browser needs a GET or a POST. form_for calls the persisted? method in active record to see if the entity exists or not, and if not will create one (create action in controller) or send this line to call the update controller action

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params) # new method takes a hash of attribute parameters
    @post.save
    redirect_to @post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url

    # DELETE - HTTP verb and SQL statement
    # Destroy - rails term for removing a resource/entity
  end

  private

  def post_params
    params.require(:post).permit(:name, :textfield, :category, :date_published, :image_file_name)
  end
end
