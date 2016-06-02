class Libro < ActiveRecord::Base
  has_many :prestamos
  validates :titulo, presence:{message: 'Es requerido'}, length: {minimum: 5, maximum: 50, message: 'Longitud debe ser entre 5 y 50'}
  # validates :anio, :numericality => true
end