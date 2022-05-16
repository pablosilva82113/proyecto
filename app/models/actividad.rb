class Actividad < ApplicationRecord
    validates :titulo, presence: true
    validates :descripcion, presence: true
    belongs_to :ActividadTipo , class_name: 'ActividadTipo' , foreign_key: 'tipo_id'
    belongs_to :Docente , class_name: 'Docente' , foreign_key: 'docente_id'

end
