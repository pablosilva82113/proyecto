class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :Docente , class_name: 'Docente' , foreign_key: 'id'
  has_many :Alumno , class_name: 'Alumno' , foreign_key: 'id'
end
