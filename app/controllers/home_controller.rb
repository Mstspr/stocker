class HomeController < ApplicationController
  def index
    if params[:id] == ""
      @nothing = "Hey, You forget to enter  a symbol"
    elsif
    
      if params[:id]
          begin
              @stock = StockQuote::Stock.quote(params[:id])
          rescue StandardError
              @error = "This Symbol doesn't Exist.. please try agian"
          end
      end
    end
  end
  
  def about
  end
  
end
