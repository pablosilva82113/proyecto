class Estado < ApplicationRecord
    has_many :Direcciones , class_name: "Direccion" , foreign_key: "estado"
end
