require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
    @name = params[name]
    @name = @name.reverse
    "#{@name}"
  end 
  
  get '/square/:number' do 
    @number = params[number]
    @number = @number.i 
    @total = @number * @number
    @total = @total.to_s 
    @total 
  end 
  
  get '/say/:number/:phrase' do 
    @num = params[number]
    @num = @num.to_i 
    
    @phrase = params[phrase]
    
    @complete_phrase = ""
    @count = 0 
    
    while @count <= @num 
    @complete_phrase = "#{complete_phrase} #{phrase}"
    @count += 1 
    end 
    
    "#{@complete_phrase}"
    
  end 

end