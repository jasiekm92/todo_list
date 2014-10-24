class PagesController < ApplicationController
  def home
    @task = Task.new
    if user_signed_in?
      @tasks = Task.where(done: false, user_id: current_user.id)
      render 'tasks/index'
    end
  end

  def about
  end
end
