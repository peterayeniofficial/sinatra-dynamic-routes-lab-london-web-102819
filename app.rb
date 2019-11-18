require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse!

  end

  get '/square/:number' do 
    @number = params[:number]
    square = @number.to_i * @number.to_i
    square.to_s

  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @number = number.to_in
    @number..times "#{@phrase}"
  

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1]
    @numb2 = params[:number2]
    @num1 = @num1.to_i
    @numb2 = @numb2.to_i
    if @operation == "add"
      add = @num1 + @numb2
      add.to_s
    elsif @operation == "subtract"
      subtract = @num1 - @numb2
      subtract.to_s
    elsif @operation == "divide"
      divide = @num1 / @numb2
      divide.to_s
    elsif @operation == "multiply"
      multiply = @num1 * @numb2
      multiply.to_s
    else
      "I don't know that operation"
    end

  end

end