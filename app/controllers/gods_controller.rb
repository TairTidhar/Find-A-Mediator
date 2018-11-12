class GodsController < ApplicationController
	skip_before_action :authenticate_user!, only: :index
	has_many :bookings
	belongs_to :user
	
  def index
    @gods = God.all
  end

  def show
    @god = God.find(params[:id])
  end

  def new
    @god = God.new
  end

  def create
    @god = God.new(god_params)
    if @god.save
      redirect_to @god, notice: 'The God was successfully created! 🙏'
    else
      render :new
    end
  end

  private

  def god_params
    params.require(:god).permit(:name, :location, :description)
  end

end
