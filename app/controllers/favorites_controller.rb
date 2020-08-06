class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favorite_add(micropost)
    flash[:success] = 'メッセージをお気に入り登録しました'
    redirect_to current_user
    
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:success] = 'メッセージをお気に入りから外しました'
    redirect_to current_user
  end
  
end