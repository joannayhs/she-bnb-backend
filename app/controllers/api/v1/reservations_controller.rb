class Api::V1::ReservationsController < ApplicationController

    def show 
        @reservation = Reservation.find(params[:id])
        render json: ReservationSerializer.new(@reservation).serializable_hash.to_json, status:200
    end 
end
