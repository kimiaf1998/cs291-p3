class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id]) or not_found
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render :update, status: :unprocessable_entity

    end
  end

  def destroy
    logger.info "Processing the request... "
    @user = User.find(params[:id])
    @user.destroy

    redirect_to root_path, status: :see_other
  end


  private
  def user_params
    params.require(:user).permit(:name, :user_name, :email)
  end


end
