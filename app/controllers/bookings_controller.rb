class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @professionel = Professionel.find(params[:professionel_id])
  end

  def show
  @booking = Booking.find(parma[:id])
  end

  def new
    @professionel = Professionel.find(params[:professionel_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(book_params)
    @professionel = Professionel.find(params[:professionel_id])
    @booking.professionel = @professionel
    @booking.user = current_user
    if @booking.save
      redirect_to professionel_bookings_path(@professionel, @booking)
    else
      render :new
    end

  end

  def edit
    @booking = Booking.find(params[:id])
    @professionel = Professionel.find(params[:professionel_id])

  end

  def update
    @booking = Booking.find(params[:id])
    @professionel = Professionel.find(params[:professionel_id])
    @booking.update(book_params)
    redirect_to professionel_bookings_path(@professionel,@booking)

  end

  def destroy
    @booking = Booking.find(params[:id])
    @professionel = Professionel.find(params[:professionel_id])
    @booking.destroy
    redirect_to professionel_bookings_path(@professionel,@booking)
  end

  private

  def book_params
    params.require(:booking).permit(:date_resa, :total_resa)
  end
end
