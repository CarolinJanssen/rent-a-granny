class ProfilesController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  # Currently valid profile controller
  # authorize under #show
  def index
    @users = policy_scope(User)
  end

  def show
    authorize @user
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    authorize @profile
    if @profile.save
      # redirect_to
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    if @user.save
      redirect_to profile_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    # redirect_to
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :number_of_kids)
  end

  def set_user
    @user = current_user
    authorize @user
  end
end
