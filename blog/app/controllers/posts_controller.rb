class PostsController < ApplicationController
  before_filter :adjust_format_for_iphone
  
  # GET /posts
  # GET /posts.xml
  def index
    @posts = Post.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.atom # index.atom.builder
      format.iphone # index.iphone.erb
      format.xml  { render :xml => @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.xml
  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end
  
  def adjust_format_for_iphone
    if request.env['HTTP_USER_AGENT'] &&
      request.env['HTTP_USER_AGENT'][/iPhone/]
      request.format = :iphone
    end
  end
end
