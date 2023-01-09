class PrestationsController < ApplicationController
  before_action :set_prestation, only: %i[show]

  def index
    @prestations = Prestation.all
    @prestations = policy_scope(Prestation)
  end

  def show
    authorize @prestation
  end

  def new
    @prestation = Prestation.new
  end

  def create
    @prestation = Prestation.new(prestation_params)
    if @prestation.save
      redirect_to prestation_path(@prestation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def prestation_params
    params.require(:prestation).permit(:name, :description, :price, :category)
  end

  def set_prestation
    @prestation = Prestation.find(params[:id])
  end
end
