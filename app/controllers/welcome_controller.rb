class WelcomeController < ApplicationController
  def index
  end
  
  def estudar_nos_eua
    redirect_to "http://www.estudarnoseua.com.br"
  end
end
