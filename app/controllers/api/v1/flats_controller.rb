class Api::V1::FlatsController < Api::V1::BaseController
  before_action :set_flat, only: %i[show update]

  def index
    render json: { flats: Flat.all }
  end

  def show
    render json: { flat: @flat }
  end

  def update
    @flat.update!(flat_params)
    render json: { flat: @flat }
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :latitude, :longitude)
  end
end
