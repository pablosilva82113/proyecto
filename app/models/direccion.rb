class Direccion < ApplicationRecord
    validates :calle, presence: true
  

    validates :numero_exterior, presence: true ,length: { minimum: 1 ,
        :message => "Longitud minima es de 1"
    }
    
   
    validates :numero_interior, :length => { :in => 1..4  ,
        :message => "Longitud minima es de 1"
    }

    validates :colonia, :uniqueness => true

    
    validates :estado, :length => { :maximum => 60 }

    validates :codigo_postal, :length => { :is => 6 }

    validates :referencia, presence: true ,length: { minimum: 5 }

    
    
    
    belongs_to :Tipo , class_name: "DireccionesTipo", foreign_key: "tipo_id"

    belongs_to :Municipios , class_name: "Municipio", foreign_key: "municipio"
  
    belongs_to :Estados , class_name: "Estado", foreign_key: "estado"

    belongs_to :Colonias , class_name: "Colonia", foreign_key: "colonia"
end
