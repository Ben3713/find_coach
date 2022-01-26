class ProfessionelsController < ApplicationController
  def index
    @professionels = Professionel.all
  end

  def show
    @professionel = Professionel.find(params[:id])
  end

  def new
    @professionel = Professionel.new
  end

  def create
    @professionel = Professionel.new(pro_params)
    if @professionel.save
      redirect_to professionels_path
    else
      render :new
  end

  def edit
     @professionel = Professionel.find(params[:id])


  end

  def update
     @professionel = Professionel.find(params[:id])
     @professionel = Professionel.update(pro_params)
     redirect_to professionel_path(@professionel)

  end

  def destroy
    @professionel = Professionel.find(params[:id])
    @professionel.destroy
    redirect_to professionels_path
  end

  private

  def pro_params
    params.require(:professionel).permit(:name, :address, :category, :tarif)

  end
end
