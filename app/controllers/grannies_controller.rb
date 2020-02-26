class GranniesController < ApplicationController
  before_action :set_granny, only: [:show, :edit, :update, :destroy]

  def index
    @grannies = policy_scope(Granny)
  end

  def show
    authorize @granny
  end

  def new
    @granny = Granny.new
    @activities = Activity.all
    authorize @granny
  end

  def create
    @granny = Granny.new(granny_params)
    authorize @granny
    if @granny.save
      # redirect_to
    else
      render :new
    end
  end

  def edit
    authorize @granny
  end

  def update
    authorize @granny
    if @granny.update(granny_params)
      # redirect_to
    else
      render :edit
    end

  end

  def destroy
    @granny.destroy
    # redirect_to
    authorize @granny
  end

  private

  def granny_params
    params.require(:granny).permit(:first_name, :last_name, :age, :activity_id)
  end

  def set_granny
    @granny = Granny.find(params[:id])
  end
end
