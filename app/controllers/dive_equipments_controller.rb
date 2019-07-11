class DiveEquipmentsController < ApplicationController
  before_action :redirect_user

    def new
    end

    def create
      @diveequipment = DiveEquipment.new(params.require(:diveequipment).permit(:dive_id, :equipment_id))
      @diveequipment.save
      redirect_to dives_show_path
    end
end
