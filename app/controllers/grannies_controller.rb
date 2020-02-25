class GranniesController < ApplicationController
  def index
    @grannies = policy_scope(Granny)
  end

  def show
  end

  def new
    @granny = Granny.new
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
    if @granny.update(granny_params)
      # redirect_to
    else
      render :edit
    end
  end

  def destroy
    @granny.destroy
    # redirect_to
  end

  private

  def granny_params
    params.require(:granny).permit(:first_name, :last_name, :age, :activities)
  end

  def set_granny
    @granny = Granny.find(params[:id])
  end
end
