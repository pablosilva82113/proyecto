class Alumno < ApplicationRecord
  validates :no_control, presence: true ,length: { minimum: 8 }
    belongs_to :Carrera , class_name: 'Carrera' , foreign_key: 'carrera_id'
  has_many :ActividadesAlumno , class_name: 'ActividadesAlumno' , foreign_key: 'id'
  belongs_to :User , class_name: 'User' , foreign_key: 'user_id'
  belongs_to :Especialidad , class_name: 'Especialidad' , foreign_key: 'especialidad_id'

end
