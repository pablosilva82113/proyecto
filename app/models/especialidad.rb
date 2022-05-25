class Especialidad < ApplicationRecord
    has_many :Almunos , class_name: "Alumno", foreign_key: "especialidad_id"
end
