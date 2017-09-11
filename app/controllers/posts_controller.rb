class PostsController < ApplicationController
    # has_attached_file :image
    before_action :get_user

def index
    @posts = Post.all
    
end

def create
    @post = Post.create(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to user_bio_path(@user, @user.bio)
    else
      render :new
    end
    
  end

def edit
    
end

def delete
end

def new
    @post = Post.new
    @user = current_user
end

private
def get_user
    @user = current_user
end
def post_params
  params.require(:post).permit(:image, :caption)
end

end
