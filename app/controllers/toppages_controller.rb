class ToppagesController < ApplicationController
  #それぞれのアクションの最後に'render:自身のアクション名が呼びだされてる
  def index
    if logged_in?
      @micropost = current_user.microposts.build #form_with(model: @micropost)として使用
      @microposts = current_user.microposts.order(id: :desc).page(params[:page])
    end
  end
end
