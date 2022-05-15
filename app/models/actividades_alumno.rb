class ActividadesAlumno < ApplicationRecord
    belongs_to :Alumno , class_name: 'Alumno' , foreign_key: 'alumno_id'
    belongs_to :Actividad , class_name: 'Actividad' , foreign_key: 'actividad_id' 

end
