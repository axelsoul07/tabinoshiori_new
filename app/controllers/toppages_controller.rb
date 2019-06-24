class ToppagesController < ApplicationController
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  before_action :require_user_logged_in, only: [:index]
  
=======
>>>>>>> origin/master
=======
>>>>>>> origin/master
=======
>>>>>>> origin/master
=======
>>>>>>> origin/master
  def index
    if logged_in?
      @plan = current_user.plans.build  # form_for 用
      @plans = current_user.feed_plans.order('created_at DESC').page(params[:page])
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
=======
    end
  end
>>>>>>> origin/master
=======
    end
  end
>>>>>>> origin/master
=======
    end
  end
>>>>>>> origin/master
=======
    end
  end
>>>>>>> origin/master
end
