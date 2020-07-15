require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed = params[:name].reverse
    erb :reversename
  end

  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
    erb :squared
  end

  get '/say/:number/:phrase' do
    result = ''
    @num = params[:number].to_i

    @num.times do
      result += params[:phrase]
    end
    result
   end

   get '/say/:word1/:word2/:word3/:word4/:word5' do
     answer = ''
     answer = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."

   end

   get '/:operation/:number1/:number2' do
     num1 = params[:number1].to_i
     num2 = params[:number2].to_i


     if params[:operation] == 'add'
       result = num1 + num2
       "#{result}"
     elsif params[:operation] == 'subtract'
       result = num1 - num2
       "#{result}"
     elsif params[:operation] == 'divide'
       result = num1 / num2
       "#{result}"
     elsif params[:operation] == 'multiply'
       result = num1 * num2
       "#{result}"
     else
       "Sorry, operation not supported"
     end
   end

end
