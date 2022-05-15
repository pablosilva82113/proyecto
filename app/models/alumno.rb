class Alumno < ApplicationRecord
    belongs_to :Carrera , class_name: 'Carrera' , foreign_key: 'carrera_id'
  has_many :ActividadesAlumno , class_name: 'ActividadesAlumno' , foreign_key: 'id'
  belongs_to :User , class_name: 'User' , foreign_key: 'user_id'

end
