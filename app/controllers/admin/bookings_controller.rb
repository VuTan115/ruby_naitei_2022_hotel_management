class Admin::BookingsController < Admin::BaseController
  def index
    @pagy, @bookings = pagy Booking.all, page: params[:page], items: 9
  end
end
