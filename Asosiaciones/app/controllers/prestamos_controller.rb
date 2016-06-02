class PrestamosController < ApplicationController
  def new
    @libro = Libro.find(params[:id])
    @prestamo = @libro.prestamos.build
  end

  def create
    @libro = Libro.find(params[:id])
    @prestamo = @libro.prestamos.build(prestamo_params)
    if @prestamo.save
      redirect_to new_prestamo_path(:id => @libro.id)
    end
  end

  private
  def prestamo_params
    params.require(:prestamo).permit(:fecha_prestamo, :fecha_entrega)
  end
end