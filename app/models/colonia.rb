class Colonia < ApplicationRecord
    has_many :Direcciones , class_name: "Direccion" , foreign_key: "colonia"
end
