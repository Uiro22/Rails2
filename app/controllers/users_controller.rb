class UsersController < ApplicationController
    def new
        @user = User.new
      end
    
      def create
        @user = User.new(user_params)
        if @user.save
          # ユーザー登録後に自動的にログインする場合は、以下を追加
          log_in @user
          redirect_to root_url, notice: 'ユーザー登録が完了しました。'
        else
          render :new
        end
      end
    
      private
    
      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
    end
