class PostsController < ApplicationController
  def index
    # @posts = Post.create(title: "post1")
    @posts= "posts from controller"
  end
end
