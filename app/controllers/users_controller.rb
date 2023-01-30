class UsersController < ApplicationController
    def new

    end

    def create 
        @user = User.new(allowed_user_params)

        if @user.save
            redirect_to new_user_path
        else
            render :new, status: :unprocessable_entity
    end
end

def allowed_user_params
    params.require(:user).permit(:username,:password,:email)
end
end
