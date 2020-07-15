require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    # reversed_name = @name.join.reverse
    "#{@name}"
  end

  get '/square/:number' do
    n = params[:number]
    (n.to_i**2).to_s
  end
    #@num = params[:number]#.to_i.square.to_s
    # n.to_i.square.to_s
    #(num.to_i**2).to_s
    # "#{@n}"
  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    "#{@phrase*@number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2=  params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @o = params[:operation]
    @n1 = params[:number1]
    @n2 = params[:number2]

    case @o
    when "add"
      "#{@n1.to_i + @n2.to_i}"
    when "multiply"
      "#{@n1.to_i * @n2.to_i}"
    when "subtract"
      "#{@n1.to_i - @n2.to_i}"
    when "divide"
      "#{@n1.to_i / @n2.to_i}"
    end

    # if o == "add"
    #   result = n1 + n2
    # elsif o == "multiply"
    #   result = n1 * n2
    # elsif o == "substract"
    #   result = n1 - n2
    # elsif o == "divide"
    #   result = n1 / n2
    # end
  end


end