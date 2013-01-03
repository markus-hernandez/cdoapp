class AdminsController < ApplicationController
    def index        
    end
    def data
      @registro_bovinos = RegistroBovino.all
    end    
end