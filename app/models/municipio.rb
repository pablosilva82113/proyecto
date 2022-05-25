class Municipio < ApplicationRecord
    has_many :Direcciones , class_name: "Direccion" , foreign_key: "municipio"
end
