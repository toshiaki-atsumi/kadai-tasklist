class ToppagesController < ApplicationController
  
  def index
    if logged_in?
      @task = current_user.tasks.build  # form_with 用
      @tasks = current_user.tasks.order(id: :asc).page(params[:page])
    end

  end
end
