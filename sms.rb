require 'AfricasTalkingGateway'
require 'sinatra'
apikey = '0caec7b981b5cde881574ff19f5edc742b965ff0ab73a7db546093c51172a111'
gateway = AfricasTalkingGateway.new('MICKEMLYN',apikey)
#gateway.sendMessage('+254710533607','Hello Micke- Im making it. Africastalking is awesome')
post '/incomingSms' do
  @from = params[:from]
    @to = params[:to]
    @message = params[:text]
    @date = params[:date]
    @id = params[:id]
    
    puts "The message you send me was - #{@message}"
    status 200
    
    
end