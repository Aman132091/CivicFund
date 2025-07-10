class AllocationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project

  def new
    @allocation = @project.allocations.new
  end

  def create
    @allocation = @project.allocations.new(allocation_params)
    @allocation.user = current_user

    total_allocated = current_user.allocations.sum(:amount) + @allocation.amount.to_i

    if total_allocated > 1000
      flash.now[:alert] = "You cannot allocate more than $1000."
      render :new
    elsif @allocation.save
      redirect_to projects_path, notice: "Budget allocated successfully."
    else
      render :new
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def allocation_params
    params.require(:allocation).permit(:amount)
  end
end