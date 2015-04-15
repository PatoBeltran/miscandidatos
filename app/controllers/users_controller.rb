class UsersController < ApplicationController
  before_filter :authenticate_admin!

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path, notice: "El usuario se creó correctamente"
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to users_path, notice: "El usuario se actualizó correctamente"
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path, notice: "El usuario se ha eliminado correctamente."
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
