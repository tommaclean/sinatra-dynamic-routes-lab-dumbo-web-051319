require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
    get '/reversename/:name' do
      @name_rev = params[:name].reverse
      "#{@name_rev}"
    end


    get '/square/:number' do
      @num = params[:number].to_i
      squared = @num * @num
      squared.to_s
    end

    get "/say/:number/:phrase" do
      "#{params[:phrase]}" * params[:number].to_i
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

    get '/:operation/:number1/:number2' do
      num1 = params[:number1].to_i
      num2 = params[:number2].to_i
      operation = params[:operation]

      case
      when operation == "add"
          (num1 + num2).to_s
        when operation == "subtract"
          (num1 - num2).to_s
        when operation == "divide"
          (num1 / num2).to_s
        when operation == "multiply"
          (num1 * num2).to_s
        else "We cannot perform that function."
      end
    end
end
