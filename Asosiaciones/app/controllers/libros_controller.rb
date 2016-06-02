class LibrosController < ApplicationController

  def new
    @libro = Libro.new
    @libros = Libro.all
  end

  def create
    @libro = Libro.new(libro_params)
    if @libro.save
      redirect_to new_libro_path
    end
  end

  private
  def libro_params
    params.require(:libro).permit(:titulo, :autor, :descripcion, :anio)
  end

end