class Admin::ReportsController < ApplicationController
  before_action :authenticate_user!

  def index
    @projects = Project.includes(budgets: :user).all
  end
end