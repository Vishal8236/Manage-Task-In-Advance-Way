class TaskActivityController < ApplicationController
  def index
    @tasks = Task.all
  end
end
