class VacationHomesController < ApplicationController
    def index
        vacationhomes = VacationHome.all
        render json: vacationhomes, include: [:owner, :location]
    end

    def show
        vacationhome = VacationHome.find(params[:id])
        render json: vacationhome, include: [:owner, :location]
    end

    def create
        vacationhome = VacationHome.create({
            name: params[:name],
            owner_id: params[:owner],
            location_id: params[:location]
        })
        render json: vacationhome, include: [:owner, :location]
    end

    def destroy
        vacationhome = VacationHome.find(params[:id])
        vacationhome.destroy
    end
end