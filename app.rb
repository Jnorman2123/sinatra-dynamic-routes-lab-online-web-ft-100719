require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @square_number = params[:number].to_i ** 2
    "#{@square_number}"
  end

  get '/say/:number/:phrase' do
    @phrases = []
    params[:number].to_i.times do
      @phrases << params[:phrase]
    end
    "#{@phrases.join(", ")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} " + "#{params[:word2]} " + "#{params[:word3]} " + "#{params[:word4]} " + "#{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case params[:operation]
    when "add"
      @add = @num1 + @num2
      "#{@add}"
    when "subtract"
      binding.pry
      @subtract = @num1 - @num2
      "#{@subtract}"
    when "multiply"
      @multiply = @num1 * @num2
      "#{@multiply}"
    when "divide"
      @divide = @num1 / @num2
      "#{@divide}"
    end
  end
end
