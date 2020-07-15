require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    reverse_me = params[:name]
    @reverse_name = reverse_me.reverse!
    erb :reversename
  end

  get "/square/:num" do
    square_me = params[:num]
    @squared_num = ((square_me.to_i)**2).to_s
    erb :square
  end

  get "/say/:number/:phrase" do
    num = params[:number].to_i
    phrase = params[:phrase]
    "#{phrase * num}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    ar = []
    params.map{|i| ar << i.last}
  "#{ar.join (" ")}."
  end

  get "/:operator/:number1/:number2" do
    operator = params[:operator]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    case operator
      when "add"
      "#{number1 + number2}"
      when "subtract"
      "#{number1 - number2}"
      when "multiply"
      "#{number1 * number2}"
      when "divide"
      "#{number1 / number2}"
      end
  end
end
