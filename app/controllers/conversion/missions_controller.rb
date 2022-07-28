class Conversion::MissionsController < ApplicationController
 
  def index
    @mission = Mission.all
  end

  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.new(mission_params)
    if (@mission.save) 
      redirect_to  conversion_missions_path
    else
      render :new
    end
  end
  def destroy
    @mission = Mission.find(params[:id])
    @mission.destroy
    redirect_to conversion_missions_path
  end

  def mission_params
    params.require(:mission).permit(:currency1, :currency2, :rate)
  end
end
