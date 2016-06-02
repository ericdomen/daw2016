class EstadosController < ApplicationController
  def new
    @estado = Estado.new
  end

  def create
    @estado = Estado.new(estado_params)

    if @estado.save
      redirect_to @estado
    else
      render 'new'
    end
  end

  def show
    @estado = Estado.find(params[:id])
  end

  def index
    @estados = Estado.all
  end

  def edit
    @estado = Estado.find(params[:id])
  end

  def update
    @estado = Estado.find(params[:id])

    if @estado.update(estado_params)
      redirect_to @estado
    else
      render 'edit'
    end
  end

  def destroy
    @estado = Estado.find(params[:id])
    @estado.destroy
    redirect_to estados_path
  end

  private
  def estado_params
    params.require(:estado).permit(:nombre, :pais)
  end
end
