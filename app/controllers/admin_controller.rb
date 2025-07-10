class AdminController < ApplicationController
  before_action :authenticate_user!

  def report
    @projects = Project.left_outer_joins(:allocations)
                       .select("projects.*, COALESCE(SUM(allocations.amount), 0) as total_allocated")
                       .group("projects.id")
  end
end