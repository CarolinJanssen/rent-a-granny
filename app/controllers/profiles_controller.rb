class ProfilesController < ApplicationController
  # Currently valid profile controller
  # authorize under #show
  def index
    @profiles = policy_scope(Profile)
  end

  def show
    authorize @profile
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
    authorize @profile
  end

  def update
    if @profile.update(profile_params)
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

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :age, :activities)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
