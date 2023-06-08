class ApplicationController < ActionController::Base
    private

  def after_sign_up_path_for(resource)
    # 登録後にリダイレクトするパスを設定
  end
end
