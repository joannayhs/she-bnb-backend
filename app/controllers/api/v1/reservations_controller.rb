class Api::V1::ReservationsController < ApplicationController

    def index 
        @reservations = Reservation.all 
        render json: ReservationSerializer.new(@reservations).serializable_hash.to_json, status: 200
    end 

    def show 
        @reservation = Reservation.find(params[:id])
        render json: ReservationSerializer.new(@reservation).serializable_hash.to_json, status:200
    end 

    def create
        @reservation = Reservation.new(reservation_params)
        if @reservation.save 
            render json: ReservationSerializer.new(@reservation).serializable_hash.to_json, status: 200
        else 
            render json: {error: @reservation.errors.full_messages.to_sentences}, status: :unprocessable_entity
        end 
    end 

    private 

    def reservation_params
        params.require(:reservation).permit(:start_date, :end_date, :num_of_guests, :listing_id, :user_id)
    end 
end
