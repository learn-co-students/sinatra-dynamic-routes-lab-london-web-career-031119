require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @rev_name = params[:name]
    erb :reversename
  end

  get '/square/:number' do
    sq_num = params[:number].to_i
    @final_number = (sq_num ** 2).to_s
    erb :square
  end

  get "/say/:number/:phrase" do
    str = params[:phrase]
    num = params[:number].to_i
    @n_time = str * num
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @contcat_word = "#{params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]}."
    erb :say
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if op == "add"
      @op_num = (num1 + num2).to_s
    elsif op == "subtract"
      @op_num = (num1 - num2).to_s
    elsif op == "multiply"
      @op_num = (num1 * num2).to_s
    elsif op == "divide"
      @op_num = (num1 / num2).to_s
    end    # return n
    erb :index
  end
end
