class Carrera < ApplicationRecord
    validates :siglas, presence: true ,length: { minimum: 2 }
    has_many :Alumnos , class_name: 'Alumno' , foreign_key: 'carrera_id'
    
end
