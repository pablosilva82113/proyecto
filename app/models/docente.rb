class Docente < ApplicationRecord
    belongs_to :User , class_name: 'User' , foreign_key: 'user_id'
    has_many :Actividad , class_name: 'Actividad' , foreign_key: 'id'
end
