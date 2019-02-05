class BookingsController < ApplicationController
  def new
    @mediator = Mediator.find(params[:mediator_id])
    @booking = Booking.new
  end

  def create
    @mediator = Mediator.find(params[:mediator_id])
    @booking = Booking.new(booking_params)
    @booking.mediator = @mediator
    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking), notice: 'Your booking is confirmed. Check your inbox - you will recieve an email with the details'
    else
      render "mediators/show"
    end
  end

  def show
    @booking = Booking.find(params[:id])

    respond_to do |format|
      format.html { render :show }
      format.pdf {
        render :pdf => "show", :layout => 'pdf.html'#, show_as_html: true
      }
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
