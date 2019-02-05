class MediatorsController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:search] != nil
      @mediators = Mediator.global_search(params[:search])
    else
      @mediators = Mediator.all
    end
  end

  def show
    @booking = Booking.new
    @mediator = Mediator.find(params[:id])
  end

  def new
    @mediator = Mediator.new
  end

  def create
    @mediator = Mediator.new(mediator_params)
    @mediator.user = current_user
    if @mediator.save
      params[:mediator][:power_ids].each do |id|
        mediatorpower = MediatorPower.new(power_id: id)
        mediatorpower.mediator = @mediator
        mediatorpower.save
      end
      redirect_to mediators_path, notice: 'The mediator profile was successfully created'
    else
      render :new
    end
  end

  def edit
    @mediator = Mediator.find(params[:id])
  end

  def update
      @mediator = Mediator.find(params[:id])
      @mediator.update(mediator_params)
      redirect_to mediator_path(@mediator)
  end

  def destroy
      @mediator = Mediator.find(params[:id])
      @mediator.destroy
      redirect_to mediators_path, notice: 'The Mediator profile was successfully destroyed'
  end

  private

  def mediator_params
    params.require(:mediator).permit(:name, :location, :description, :price, :photo)
  end
end
