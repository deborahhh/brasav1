class WelcomeController < ApplicationController
  def index
    # Splits universities into three columns
    @unis = UNIVERSITIES.in_groups(3, false)
  end
  
  def estudar_nos_eua
    redirect_to "http://www.estudarnoseua.com.br"
  end
end
