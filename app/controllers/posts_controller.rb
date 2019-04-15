class PostsController < ApplicationController
  # because of this inheritance, this ruby file knows to act like a controller
  def index # <- the index action: an action is simply a publicly-accessible ruby method defined in a controller class
    @posts = ['My Car', 'My Music', 'My Tech']
  end
end
