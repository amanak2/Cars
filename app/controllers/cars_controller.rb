class CarsController < ApplicationController
  before_action :find_car, only: [:show, :edit, :update, :destroy]

  def index
    @car = Car.all.order("created_at DESC")
  end

  def show
  end

  def new
    @car = current_user.cars.build
  end

  def create
    @car = current_user.cars.build(car_params)

    if @car.save
      redirect_to @car, notice: "new Car created"
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to @car
    else
      render "edit"
    end
  end

  def destroy
    @car.destroy
    redirect_to root_path, notice: "Succesfully deleted"
  end

  private

  def find_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:name, :company, :image, engines_attributes: [:id, :engine_type, :displacment, :power, :torque, :layout, :_destroy],
                                                         performances_attributes: [:id, :top_speed, :acceleration1, :acceleration2, :power_to_weight, :torque_to_weight, :_destroy],
                                                         transmissions_attributes: [:id, :trans_type, :speeds, :drive_type, :clutch_type, :_destroy],
                                                         dimensions_attributes: [:id, :length, :width, :height, :wheel_base, :weight, :_destroy])
  end

end
