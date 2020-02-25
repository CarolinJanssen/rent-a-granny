class ProfilesController < ApplicationController
  def index
    @profiles = policy_scope(Profile)
  end

  def show
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(granny_params)
    authorize @profile
    if @profile.save
      # redirect_to
    else
      render :new
    end
  end

  def edit
    authorize @profile
  end

  def update
    if @profile.update(granny_params)
      # redirect_to
    else
      render :edit
    end
  end

  def destroy
    @profile.destroy
    # redirect_to
  end

  private

  def granny_params
    params.require(:profile).permit(:first_name, :last_name, :age, :activities)
  end

  def set_granny
    @profile = Profile.find(params[:id])
  end
end
