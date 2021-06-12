class HomeController < ApplicationController
  def index
    @tasks = current_user.tasks.all
  end
end
