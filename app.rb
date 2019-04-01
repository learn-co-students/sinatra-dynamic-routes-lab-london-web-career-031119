require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @answer = @number * @number
    "#{@answer}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    @answer = []
    @number.times do
      @answer << "#{@phrase}"
    end
    @answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
    when "add"
       "#{@number1+@number2}"
    when "subtract"
      "#{@number1-@number2}"
    when "multiply"
      "#{@number1 * @number2}"
    when "divide"
      "#{@number1/@number2}"
    end

  end

end
