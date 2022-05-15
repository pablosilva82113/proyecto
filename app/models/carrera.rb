class Carrera < ApplicationRecord
    has_many :Alumnos , class_name: 'Alumno' , foreign_key: 'id'
    
end
