class DireccionesTipo < ApplicationRecord
  has_many :Direcciones , class_name: "Direccion", foreign_key: "tipo_id"
end
