class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
  end

  def dashboard
  end

  def owner_dashboard
    @mediators = Mediator.where(user_id: current_user.id)
  end
end
