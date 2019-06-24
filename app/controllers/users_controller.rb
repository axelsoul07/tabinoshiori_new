class UsersController < ApplicationController
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  before_action :require_user_logged_in, only: [:index, :show, :followings, :followers, :likes]
=======
  before_action :require_user_logged_in, only: [:index, :show, :followings, :followers]
>>>>>>> origin/master
=======
  before_action :require_user_logged_in, only: [:index, :show, :followings, :followers]
>>>>>>> origin/master
=======
  before_action :require_user_logged_in, only: [:index, :show, :followings, :followers]
>>>>>>> origin/master
=======
  before_action :require_user_logged_in, only: [:index, :show, :followings, :followers]
>>>>>>> origin/master
  def index
    @users = User.all.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    @plan = @user.plans.build
    @plans = @user.plans.order('created_at DESC').page(params[:page])
    @plans = @user.feed_plans.order('created_at DESC').page(params[:page])
=======
    @plans = @user.plans.order('created_at DESC').page(params[:page])
>>>>>>> origin/master
=======
    @plans = @user.plans.order('created_at DESC').page(params[:page])
>>>>>>> origin/master
=======
    @plans = @user.plans.order('created_at DESC').page(params[:page])
>>>>>>> origin/master
=======
    @plans = @user.plans.order('created_at DESC').page(params[:page])
>>>>>>> origin/master
    counts(@user)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'ユーザを登録しました。'
      #redirect_toでshowアクションを実行
      redirect_to @user
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end
  
  def followings
    @user = User.find(params[:id])
    @followings = @user.followings.page(params[:page])
    counts(@user)
  end
  
  def followers
    @user = User.find(params[:id])
    @followers = @user.followers.page(params[:page])
    counts(@user)
  end
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  
  def likes
    @user = User.find(params[:id])
    @likes = @user.favoritings.page(params[:page])
    counts(@user)
    @plan = @user.plans.build
    @plans = @user.feed_favorite_plans.order('created_at DESC').page(params[:page])
  end
  
  def favoritings
    @user = User.find(params[:id])
    @favoritings = @user.favoritings.page(params[:page])
    counts(@user)
  end
  
  def favoriters
    @user = User.find(params[:id])
    @favoriters = @user.favoriters.page(params[:page])
    counts(@user)
  end
=======
>>>>>>> origin/master
=======
>>>>>>> origin/master
=======
>>>>>>> origin/master
=======
>>>>>>> origin/master

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
