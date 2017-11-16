class PostsController < ApplicationController
  before_action(:find_post, only:[:update, :show, :destroy, :edit]) 
  
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(
      image_url: params[:image_url],
      story: params[:story]
    )
    
    redirect_to posts_path
  end

  def show
  end

  def edit
  end

  def update
    @post.update(
      image_url: params[:image_url],
      story: params[:story]
    )
    
    redirect_to post_path(@post.id)
  end

  def destroy
    @post.destroy
    
    redirect_to :root
  end
  
  def new_tag
  
  end
  
  
  def create_tag
    @tag1= params[:tag][:name1]
    @tag2= params[:tag][:name2]
    @tag3= params[:tag][:name3]
    @tag4= params[:tag][:name4]
  end
  
  private
  def find_post
    @post = Post.find(params[:id])
  end
end
