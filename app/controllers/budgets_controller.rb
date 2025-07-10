class BudgetsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project

  def new
    @budget = @project.budgets.new
  end

  def create
    @budget = @project.budgets.new(budget_params)
    @budget.user = current_user  # 👈 Ye line add ki gayi hai — budget ka user assign karne ke liye

    if @budget.save
      @project.update(status: "pending")
      redirect_to project_path(@project), notice: "Budget allocated successfully."
    else
      render :new
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def budget_params
    params.require(:budget).permit(:amount, :status)
  end
end