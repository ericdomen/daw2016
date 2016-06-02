class Estado < ActiveRecord::Base
  validates :nombre, presence:{message: 'Es requerido'}, length: {minimum: 5, maximum: 50, message: 'Longitud debe ser entre 5 y 50'}
  validates :pais, presence:{message: 'Es requerido'}, length: {minimum: 4, maximum: 50, message: 'Longitud debe ser entre 5 y 50'}
end
