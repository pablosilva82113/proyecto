class ActividadTipo < ApplicationRecord
    has_many :Actividades , class_name: 'Actividad' , foreign_key: 'tipo_id'

end
