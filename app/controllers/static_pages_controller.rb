class StaticPagesController < ApplicationController
  # before_action :set_bio, only: [:home2]


  def home
    if signed_in?
      redirect_to static_pages_home2_path
    end
  end

  def home2
    @user = current_user
    @bio = @user.bio
  end

  # private
  #
  #   def set_bio
  #     @bio = current_user.bios.find(params[:user_id])
  #   end
end
