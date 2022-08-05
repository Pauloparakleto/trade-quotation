class WelcomeController < ApplicationController
  def home
    response =  HTTParty.get('https://economia.awesomeapi.com.br/last/USD-BRL')
    @high_quotation = response.fetch('USDBRL').fetch('high')
    @current_quotation_sales = response.fetch('USDBRL').fetch('ask')
  end
end
