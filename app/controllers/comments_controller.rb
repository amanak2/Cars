class CommentsController < ApplicationController
  def create
    @car = Car.find(params[:car_id])
    @comment = @car.comments.create(params[:comment].permit(:name, :body))

    redirect_to car_path(@car)
  end
end
