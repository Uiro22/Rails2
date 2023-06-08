class ReservationController < ApplicationController
    before_action :authenticate_user!, except: [:show]
    before_action :set_reservation, only: [:show, :edit, :update, :destroy]
  
    def index
      @reservations = current_user.reservations
    end
  
    def new
      @room = Room.find(params[:room_id])
      @reservation = Reservation.new
    end
  
    def create
      @room = Room.find(params[:room_id])
      @reservation = current_user.reservations.new(reservation_params)
      @reservation.room = @room
  
      if @reservation.save
        redirect_to @reservation, notice: 'Reservation was successfully created.'
      else
        render :new
      end
    end
  
    def show
    end
  
    def edit
    end
  
    def update
      if @reservation.update(reservation_params)
        redirect_to @reservation, notice: 'Reservation was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @reservation.destroy
      redirect_to reservations_url, notice: 'Reservation was successfully destroyed.'
    end
  
    private
      def set_reservation
        @reservation = Reservation.find(params[:id])
      end
  
      def reservation_params
        params.require(:reservation).permit(:start_date, :end_date, :price)
      end
  end
