class BiosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bio, except: [:index, :new, :create]

  def index
    @bio = Bio.all
  end

  def new
    @user = current_user
    @bio = Bio.new
    render :new
  end

  def create
    @bio = Bio.new(bio_params)
    @bio.user = current_user
    if @bio.save
      redirect_to user_bio_path(@bio.user, @bio)
    else
      render :new
    end
  end

  def edit
    @user = current_user
  end

  def update
    if @bio.update(bio_params)
      redirect_to user_bio_path(@bio.user, @bio)
    else
    render :edit
    end
  end

  def show
    @user = current_user
  end


  def destroy
  end

  private
    def set_bio
      @bio = current_user.bio
    end

    def bio_params
      params.require(:bio).permit(:description, :pro_image, :user_name)
    end
end
