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
    case params[:operation]
    when +
      "#{params[:number1]}" + "#{params[:number2]}"
    when -
      "#{params[:number1]}" + "#{params[:number2]}"
    when *
      "#{params[:number1]}" + "#{params[:number2]}"
    when /
      "#{params[:number1]}" + "#{params[:number2]}"
    end
  end
end
