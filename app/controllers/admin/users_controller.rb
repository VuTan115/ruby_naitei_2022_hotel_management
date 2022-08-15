class Admin::UsersController < Admin::BaseController
  def index
    @pagy, @users = pagy User.where(role: 0), page: params[:page], items: 15
  end
end
