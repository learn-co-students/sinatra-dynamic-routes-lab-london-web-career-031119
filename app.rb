require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    erb :reversename
  end

  get '/square/:number' do
    @number = params[:number]
    @number = @number.to_i * @number.to_i
    erb :square
  end

  get '/say/:number/:phrase' do
    @say = params[:phrase]
    @times = params[:number].to_i
    erb :reps
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @say = []
    params.each{ |k,word| @say << word }
    erb :say
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    case @operation
    when 'add'
      @math = params[:number1].to_i + params[:number2].to_i
    when 'subtract'
      @math = params[:number1].to_i - params[:number2].to_i
    when 'multiply'
      @math = params[:number1].to_i * params[:number2].to_i
    when 'divide'
      @math = params[:number1].to_i / params[:number2].to_i
    end
    erb :math
  end

end
