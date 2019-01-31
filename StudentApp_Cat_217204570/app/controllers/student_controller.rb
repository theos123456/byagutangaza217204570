class StudentController < ApplicationController
    validates :regno, presence: true 
    validates :name, presence: true 
    validates :phone, presence: true 
    validates :address, presence: true 
end